$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.29.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '11c56acc74c7998afa60bfc2c483cf55c56f1488546817cb13e7985fc1cde47b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
