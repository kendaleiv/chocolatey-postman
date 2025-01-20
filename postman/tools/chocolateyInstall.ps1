$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.28.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'fd15cf53fd3cad2f53f06bcfb61c4347c1b896a18658859cf469fa17117b53e2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
