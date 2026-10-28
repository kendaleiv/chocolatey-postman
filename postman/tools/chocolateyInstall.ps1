$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.34.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5d4f5287c808ea581abf26e01985e4e52a922156a4c1e92cbc52358f630c1282'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
