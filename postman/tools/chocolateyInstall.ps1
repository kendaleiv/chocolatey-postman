$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.7.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0efec2748f38fdc65c1ef6141569f8006f197b058f7b1df8d0a4f0685eb8e42f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
