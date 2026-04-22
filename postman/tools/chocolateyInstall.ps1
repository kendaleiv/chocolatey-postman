$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.7.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '93cfac52ddf7acbaf181e29fdf9a0e81025fccfb64ed399452723ced1d2cc6ee'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
