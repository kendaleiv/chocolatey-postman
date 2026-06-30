$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.17.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '72a2d55b62960e3a939116ebffa648fafc9f410fe6b59cd45243a539bc33a7df'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
