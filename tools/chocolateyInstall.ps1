$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.0.3/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.0.3/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '9526FC0848255FD9122C93DAB0E22F751D6FADCDAEAABC51CA24501E4D050ACB'
  checksumType  = 'sha256'
  checksum64    = '43CA141C0231B3C37200AE5D21482D664BF1234B7C2F159A633B254EF5ED8678'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
