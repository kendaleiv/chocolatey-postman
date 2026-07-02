$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.17.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'cab550ba27bc1ef428cfefee2e7d467209b25750a7bd7750b0cc0c990cf86570'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
