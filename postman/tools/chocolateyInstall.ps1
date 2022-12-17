$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.6.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '45074642c391ca935aa2208ec5aec3459a26aa9702e43caefb150fc1c4bda8ca'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
