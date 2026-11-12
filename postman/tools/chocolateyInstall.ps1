$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.36.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6cded2c8e655197167b34e15741e4519b39dfa0ae570de2ac9220fb276bcdc38'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
