$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '14acc0589b3f925441f9ed4a782454854dc8da9d8b095603e564d715350b3df0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
