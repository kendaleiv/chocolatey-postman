$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.9.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.9.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'ACF4BE20E57D9809F143F9213388620C37FA251386DC85BF1F6BD4190CEC0901'
  checksumType  = 'sha256'
  checksum64    = 'A88D8064F8DE5B6E9642A845F4A5A3BEE4FC3D7ACE80385D9F5580178C6549F3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
