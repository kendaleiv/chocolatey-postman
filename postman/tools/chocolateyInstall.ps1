$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.20.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '94ca72e43544598d75500a1547e198d5c439b713f2c2dc04fb24dcd8b5820214'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
