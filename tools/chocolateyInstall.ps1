$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.18.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.18.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'F9FABD8FF74398F353038608E400F2E1B1DD14AD918A07C316E6E58517B70ADE'
  checksumType  = 'sha256'
  checksum64    = 'D5CD3CE2101D4E1D49C3D81BB508000C6588835EE703E5A7793A93F9E7A34169'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
