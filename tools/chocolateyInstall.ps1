$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.0.5/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.0.5/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'B420085F1C8712A5402E707BBEB87195DA35C88C524904D449675A964041B35C'
  checksumType  = 'sha256'
  checksum64    = '3C39FEE2E76BDC4F91B926ECD646D2FD3F81BC4C332C544203A4E73353C11A5C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
