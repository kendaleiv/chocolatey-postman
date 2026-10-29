$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.34.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'eb7884bc028230a57d41493f7235ca1c737d7b12d275bb890c6b20cbb72e7951'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
