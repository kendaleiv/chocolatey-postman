$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.19.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e2abd26839034bac8d771c442b20050111b3db68b39b4f4876c75a2e32f54675'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
