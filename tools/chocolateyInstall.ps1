$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.9.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.9.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '62E611011B2B3325BC2B508D4F2259CBDB2C28F010C105974FF3BEF10B820488'
  checksumType  = 'sha256'
  checksum64    = '2A575D68EC2B8A380BDA9F4D5EFCF8E425A95BD0513C0874F7846C0FF7A09505'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
