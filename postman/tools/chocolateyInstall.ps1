$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.24.16/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '8bb834fbd0ea1d2b7994301b689e7dc1b0cc10dd99d579ce29fd449cb78f33b0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
