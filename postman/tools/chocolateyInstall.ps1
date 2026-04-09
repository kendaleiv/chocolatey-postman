$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.5.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e16b07771712a2b2bd24a8b101ef7417c991c7649448a1ceca921fe3679153e4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
