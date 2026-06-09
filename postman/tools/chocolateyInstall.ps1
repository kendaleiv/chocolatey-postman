$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.14.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '20d6b29bc22e11f2248fcc4a069a137db1650d92f64e4d88019340b4b16545ec'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
