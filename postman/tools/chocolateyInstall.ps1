$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.11.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '681e3ad4f7235039d5e71319053a4950cd9836cc0d3ded88a40959511adae4a5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
