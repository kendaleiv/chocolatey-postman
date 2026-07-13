$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.19.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f5d7b887603ee817fe0098ba95cf65f63ebbe8bc07fff625ffea236f8e88f859'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
