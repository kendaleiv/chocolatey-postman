$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.33.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '8f80127bbbbec37e5435db4c343b3e4c2ef1790a9dc53e36b3d558bfd66858cf'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
