$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.6.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '05b9354590ca81664d120230a716f70d02f0eeb260086ab4a0679aa40df58879'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
