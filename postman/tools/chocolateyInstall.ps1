$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '26c82e2a429cf88ed22c64092ab3ccef57ef3609a929ecfee6a106cfe0f9449d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
