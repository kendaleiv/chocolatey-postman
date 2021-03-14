$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.0.7/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.0.7/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'BE55693B50796C465FD2DA12248F9BB2C8D752352BAB90302CD08AA77B73EA3C'
  checksumType  = 'sha256'
  checksum64    = 'D39EDDBFAF291D2F49DA9469CD63D1D91364D116F9BAFDF95ADCA5BE80DBA6C5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
