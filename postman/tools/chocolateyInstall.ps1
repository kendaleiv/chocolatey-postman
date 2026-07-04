$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.17.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '450c4c646574322936f943252c44e8f2c5a237952dcd7bcfc23c9f0c72bf119a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
