$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.11.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '95ec21f7b3c09c315de4896edb72417b60a90ecb2b0d3ca53b50c6908df2112f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
