$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.1.3/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.1.3/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '93A8FC64ED4B80A90F85A3330773527794D175F84BEA4C500534C3380AFF7BA7'
  checksumType  = 'sha256'
  checksum64    = 'E005EB63A3E8613E18357A37D120065730E0BF71D86B12FD72D4224DDEB64193'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
