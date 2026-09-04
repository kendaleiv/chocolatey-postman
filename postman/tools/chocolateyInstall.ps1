$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.26.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f875e0b45abd83e81a290c99b9ff63ac817fcd1c46508a6666c9f76d33e3d617'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
