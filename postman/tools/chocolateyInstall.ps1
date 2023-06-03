$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.14.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '60dd66a27ae77c27653cf40bd28cd9cea2c9ad884c0a81413490927f5964f74b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
