$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.10.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '55ee8ed194a31273e4246afe7d97f5e8b20cbaebd4c28864a85e5cd0034976a2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
