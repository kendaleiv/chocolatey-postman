$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.19.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b9e2c820d6c29dfdc77363f3f6c0d91b85929c536001ffb1445867c48a64828d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
