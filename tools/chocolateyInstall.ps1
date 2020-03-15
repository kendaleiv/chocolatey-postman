$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.20.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.20.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '91982AE3D87E0FC50B48DEE0809913F963CCB2323EE4F39A0B5E258970C0B4F8'
  checksumType  = 'sha256'
  checksum64    = 'EC4F8A82796D10C7444A9D76598FAE399789BF715FCFC53AC2B258098CB560CA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
