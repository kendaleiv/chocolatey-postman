$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.0.10/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.0.10/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '734960AD9C9C39CA6DAB769A96943CB776686DC9C291E0979A5949E424023DC5'
  checksumType  = 'sha256'
  checksum64    = 'DE24841AE17316BC6DA512AF7CF74DC65B195F306DCCA8AEA6518A2A16B3132D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
