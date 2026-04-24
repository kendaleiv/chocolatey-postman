$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.7.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '939a1412f68b29cf8fab6462421d76c5fe205da0c76be95788232a0e047b2acf'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
