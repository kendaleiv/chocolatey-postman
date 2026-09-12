$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.27.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6762b5e95b4e3374092458b9cb4dec50baff13da8263c9de41326d2ab1fac3ed'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
