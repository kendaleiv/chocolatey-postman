$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.18.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '19eac3e57575a96e50f9b762d8970781e72786d49ecccbbe177c1c5c3e5bb6c6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
