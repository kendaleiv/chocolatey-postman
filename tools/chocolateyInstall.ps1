$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.36.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.36.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'C4D7E5F5DD32CE0754A750E5D083C416614245485B2FD5C80C39A8675D345B36'
  checksumType  = 'sha256'
  checksum64    = '9D777E0031BFB10A15128EBCD01EEB062C373F69229058774CA2D596744475AC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
