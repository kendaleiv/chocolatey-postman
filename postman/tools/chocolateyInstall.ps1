$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '3d6178467ca2da71fe0ffafd5163d81d70ffc02da607e545be9c433f2adafa8f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
