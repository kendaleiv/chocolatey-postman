$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.3.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.3.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'ead7c90304e2e249f0abb30bd76d9f0aefb06f1e5f61662cd4b8edd4718a1dd6'
  checksumType  = 'sha256'
  checksum64    = '3b2d57bf73c9b3c0ee5eebd358618526f76b5589b38ea3d6541c38ccef50169b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
