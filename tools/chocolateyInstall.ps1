$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.2.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.2.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '1381A3E88523A557DDB76C93745667937A2C12FBB3742CB55E930686B957DFB3'
  checksumType  = 'sha256'
  checksum64    = '44F7918949495E9608D679671D9FB7AE32EEEF9D43D5FF9A67763F43F67A29F8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
