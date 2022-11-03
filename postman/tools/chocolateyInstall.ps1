$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.0.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '569397bc1568018703c41541ca3dcda173be92df7e9fdb05477b3e43e6efbae3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
