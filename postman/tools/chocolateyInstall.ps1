$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.16.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '9cebab6f23fe1e20663c72aa1c2622ca376b741f5a1be1116280dafcd6929aca'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
