$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.4.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.4.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '328d481ced8747a39214f0f687d1e07146469f1c22a3fef584bdf1ba0bd31db3'
  checksumType  = 'sha256'
  checksum64    = '2adcce5b4f15e3347b56c899732b94f10310af30a08d33fed96fd0a6df992156'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
