$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.22.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '79289062c16bcb628408510784c52a4061dd873719bb4aa7bb7068968f956e5f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
