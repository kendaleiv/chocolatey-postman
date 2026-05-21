$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.11.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7ead1ec8563b173cc3580eb25655ce03e9b6742a8da66d80aea260969ebd041e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
