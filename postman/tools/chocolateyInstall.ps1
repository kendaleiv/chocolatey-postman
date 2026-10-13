$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.32.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '847a38a882067131e73a3a823522ce0bb51b3b7cb96dd26d80539701d0aa6d87'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
