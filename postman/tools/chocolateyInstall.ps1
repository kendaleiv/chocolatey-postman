$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.15.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '8ec77764dbca682c5ac05250480278f32437f0ba9637b4b3b655eabf3b6cbd6f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
