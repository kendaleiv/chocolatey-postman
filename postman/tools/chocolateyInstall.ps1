$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.19.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'a3c605796c56c4de85705537d0f67a8ca9c904400cadaff0b3964459f3489ff6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
