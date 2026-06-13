$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.14.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '497b1a4d4adc5d4a079e13620cf16de21501327596c2167a7e63b6921c082baa'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
