$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.36.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.36.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '8E543B23193A9362FEED8404A811B7A9B14AF31FC7DCCFE55984A0D646FFA86C'
  checksumType  = 'sha256'
  checksum64    = '3EA68953F59F25675107338A1DB5EF91CFE6DC928E8E9FD06CE3FF25B3AC9620'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
