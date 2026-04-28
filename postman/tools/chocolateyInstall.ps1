$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.8.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5b8b3e4ee421eac33ba76db13fb7976dc168398343ddd4ecf0a8ce23a1af8b47'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
