Import-Module au

function global:au_BeforeUpdate ($Package)  {
	
}

function global:au_AfterUpdate ($Package)  {

}

function global:au_SearchReplace {
	@{
		'postman.nuspec' = @{
			"<version>[^<]*</version>" = "<version>$($Latest.Version)</version>"
		}
		'tools\chocolateyInstall.ps1' = @{
			"(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.Url32)'"
			"(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
			"(^[$]url64\s*=\s*)('.*')" = "`$1'$($Latest.Url64)'"
			"(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
		}
	}
}

function global:au_GetLatest {
	$jsonReleaseNotesUri = 'https://dl.pstmn.io/api/version/notes?channel=stable'
	$jsonResponse = Invoke-RestMethod -Method Get -Uri $jsonReleaseNotesUri
	
	$version = [Version] $jsonResponse.notes[0].version

	$url32 = "https://dl.pstmn.io/download/version/$($version.Major).$($version.Minor).$($version.Build)/windows32"
	$url64 = "https://dl.pstmn.io/download/version/$($version.Major).$($version.Minor).$($version.Build)/windows64"

	return @{ Url32 = $url32; Url64 = $url64; Version = $version }
}

Update-Package -NoReadme