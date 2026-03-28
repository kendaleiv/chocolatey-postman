$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.3.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '865373a080f8cabff725c36047820edd4daaa1b1c58b7a43eeaf56f04a2ea88a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
