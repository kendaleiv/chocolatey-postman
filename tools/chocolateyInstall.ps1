$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.33.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.33.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'AB11F53A4B67061370F5394E0C28C51E6498B341F9F9A4D7E6B0921278467361'
  checksumType  = 'sha256'
  checksum64    = '3D8D94E9333BA10A74717B13A18814E39A3F01FFD95E7C3A7636176B74A0C0F5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
