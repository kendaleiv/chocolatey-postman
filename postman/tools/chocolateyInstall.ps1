$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.26.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7d2c896a376bc1b06a6d71b212acff82340b21c1f2262df06d0724e0e40aa2e9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
