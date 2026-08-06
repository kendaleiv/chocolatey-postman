$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.22.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '376fb319813968b00de6e482ba31a689cde4d7946084578fb681eb7d679e472b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
