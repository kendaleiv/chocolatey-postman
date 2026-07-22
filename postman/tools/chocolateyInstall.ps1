$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.20.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7df7a40a51aa88fe0c97e946dfd2b882b6ac98007235a07579369df985d3eefd'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
