$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.14.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '855e62162c4518e6d96aed4b70f246b7e532eecd82896fbd97fc939450f06a4f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
