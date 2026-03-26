$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.3.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '699e70b8846df6f2952fd41f38d157b2724ee397a43da1e8c4012269793cba45'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
