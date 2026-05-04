$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.9.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6a9d50cd3bfd417470027796c704684f3daacca16d4df57085a04478f442798e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
