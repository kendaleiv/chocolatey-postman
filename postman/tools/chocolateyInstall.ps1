$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.23.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'a1179debe78e20585b581589090a77d99b6b8f5ac85a3b02fe8539aea768a5d9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
