$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.1.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.1.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '8FB1462CB0B1C7D5456538224045D48A6A0D5C9BDAFDF91A878E863165983724'
  checksumType  = 'sha256'
  checksum64    = '9350C9264714A9831D5D4EDFFD9863E7B466E5BED574ABEFF3F0E3404D44CE64'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
