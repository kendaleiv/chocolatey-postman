$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.9.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '65a86cb8b532ad1e9e2f6cbc5745827a3d28d0c4000ce0a99b89627b878962ae'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
