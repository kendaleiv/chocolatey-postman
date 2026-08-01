$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.21.9/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '14348111dd748c5c1981d0a3965c6ed1d375d51791d89e83c1f7e1121342f023'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
