$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.9.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f164eed1e7cd289f256a79230a1531321b979dc59385af7b2a34ba3c6904f5eb'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
