$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.12.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f5dc859107cd0ebbf68d6de0525a59738ccc21c64b557c484bad76e98d2a3b4d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
