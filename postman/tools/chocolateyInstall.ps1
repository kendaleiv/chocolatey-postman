$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.38.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'c440f736261ea97428ce6c2c42b79dc2beb7a2d23c8d75b1bc5d90173cd24165'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
