$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.4.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '20350ef15ed42634b687353e176d208b73e33403426c7c8c2e9b1fb9ababa0cf'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
