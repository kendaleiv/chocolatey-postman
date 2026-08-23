$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.24.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '86746099bb2619e8db66f4016cfbe04e7009dee3f1259b504c5dc33d7981316c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
