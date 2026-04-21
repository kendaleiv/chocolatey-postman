$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.7.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '077849da6aa3adc674870e2d46209c5fa7e456535f3536af9529027a74cf69a4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
