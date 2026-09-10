$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.27.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '44130334759919c24c63f12c6b09910d7c814428443697789b08f37eb01e722b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
