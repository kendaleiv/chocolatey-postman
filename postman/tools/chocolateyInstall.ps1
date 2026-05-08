$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.9.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'c9e27cb38a8c7a053e943dc8a95fc14aa7aaf4d2b868e1f1d1e6cf112c2ea84f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
