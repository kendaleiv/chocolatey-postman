$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.35.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0f6119ebd7ac39c0eb752e4df5ae1bcb9393afba16dac548f6fcd1224c746a31'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
