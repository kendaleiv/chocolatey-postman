$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.19.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '02d8d854bea34cef063496e299dbd1a986d630d88ab80b48341744359a5bf3a4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
