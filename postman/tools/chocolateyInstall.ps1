$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.34.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '972a4fd550573db52b5b239f9f8c5d9fdd082b58ad5c2ad34e9040d1d809dad0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
