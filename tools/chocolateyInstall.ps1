$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.13.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.13.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '2E55FC8B9351DA9E2251BBFF776B0454DCF90F78435348171EA144638FCCCC48'
  checksumType  = 'sha256'
  checksum64    = '160094C99C19ADAE5E6CA76A6747F8FCA927665EE6BD9225F4ACFBF7CE06BCCB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
