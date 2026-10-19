$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.33.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6962126961f103e3a2bf3e6852ffe1478e38b3c76e8ca5a2cd5716c94f8f3875'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
