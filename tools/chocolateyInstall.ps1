$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.0.6/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.0.6/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '2EE78C2392DBB2572386EFE980DAB6DC486F13962CB86DEDB55D43C684ECE0A2'
  checksumType  = 'sha256'
  checksum64    = '2C8627904BC234FB1CABD20089FA9D50E8D625DEF5D9494D618026A04F1FE815'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
