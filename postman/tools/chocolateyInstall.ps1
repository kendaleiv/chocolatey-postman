$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.5.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5bf6e410d931322c9c2f90cf3bdd348371f6b19dcdfbed1b64152f076e07965c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
