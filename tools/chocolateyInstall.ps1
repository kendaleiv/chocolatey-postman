$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.25.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.25.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'FFBB5DCD1D085DBC1B2743675FF0BD50BDC799657A98932DDFCF61E00F3E5355'
  checksumType  = 'sha256'
  checksum64    = '3BC0243F6BA13C3F9CA7A83B5A993079E0395C093A4D98C7341DD2846DEB540D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
