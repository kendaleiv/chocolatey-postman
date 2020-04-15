$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.22.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.22.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '2C168AABB2F194BB1BB332F304B14787274C00D0BF08677024E5B9E505137FC4'
  checksumType  = 'sha256'
  checksum64    = '3EE09B0055DDE1708E45F2E8C1BE7636C7FC16FB92E2579CB81883A46E37AD2A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
