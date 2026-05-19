$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.11.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '3f72cda378200b8f2c2b63254b433bb969777944e3ec63950a1d10618065050c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
