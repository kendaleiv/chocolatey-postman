$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.25.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '82c78b34e35fddaa86ea56b18b2242f5c2d79c2baa256b82ad0cf09afbdf2299'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
