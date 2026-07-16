$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.19.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5c30c46a0da0202e1fe51e58571ddb333dbc2e3cea7721d4d31dcd68ae2780aa'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
