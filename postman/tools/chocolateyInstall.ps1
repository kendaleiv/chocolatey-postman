$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.1.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '33401471665bc1d512659ee9362b5ef951e993fadecf1015f3fe03f9749b9384'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
