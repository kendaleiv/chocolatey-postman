$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.17.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.17.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '16F96E9E4B5AED73EFF8BF382DB7733B17FF723AF190AC3755690D4A127D94F5'
  checksumType  = 'sha256'
  checksum64    = 'B6BC9AEF966DE9DE4F2DFB207AB29143597A1FADB9C7458FE25834011E8F20C6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
