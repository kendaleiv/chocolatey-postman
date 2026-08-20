$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.24.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '50be6fa9bf5acce13e63e4b500f4f049a0e4b91c0cbdebc908be99973fb2fa1a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
