$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2504eca416239e0cc9a27d72a042f6585552c8ad273e5308d4bc7d2eba3d4f13'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
