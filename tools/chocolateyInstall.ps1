$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.27.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.27.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '25B8BE0028CCEFE3E92F6FF4E6CAF67FBD1735E2B56A39B11B03A722BDF8AF62'
  checksumType  = 'sha256'
  checksum64    = 'F233E77C54D9FE892B074DBBA766E8228A68FE4C0DE84DB93FDF22A370DEDD42'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
