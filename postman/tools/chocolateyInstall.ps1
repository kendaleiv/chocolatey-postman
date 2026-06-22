$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.16.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '71e793769fb8fef0bdd3cc6805981cf9250ec462f5e2a250aa515dd02d26c4aa'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
