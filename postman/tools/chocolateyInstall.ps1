$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f133fcff9f2a6a238e585fb0dda55287d998e698649eed9e434ac38c9da8e58c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
