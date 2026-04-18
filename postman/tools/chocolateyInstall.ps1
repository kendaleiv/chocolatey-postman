$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.6.8/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '476a09854a5f19d57d741f35765475991bedee3e84389abcbabc2c3cba0d7fc6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
