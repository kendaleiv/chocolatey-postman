$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.37.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2a35d775ebb853c77b7dc2fdcb67dfd9fcdeb0cb4b94e7adf6993e24d50a7e4d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
