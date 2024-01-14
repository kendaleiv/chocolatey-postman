$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.22.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0b59eac57b4511993a9bc1d65960885215c5d1b9777528ab110433eff49024b9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
