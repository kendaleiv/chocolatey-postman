$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.24.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '916cae051c846aec6ec42a89906c993c6d6a7d4a1886dc2d31ed94de6ec630ce'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
