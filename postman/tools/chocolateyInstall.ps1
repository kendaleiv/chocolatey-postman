$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.27.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '9729485f5ef6676a25a9e18024cb5abed494ae1a501872f2ec81ecb131dd08c0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
