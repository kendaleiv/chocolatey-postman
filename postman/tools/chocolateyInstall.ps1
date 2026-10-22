$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.33.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e81fc9cb18b88a8cb13acea595c4915cf93e35503ae703006ebee9fdc6ca4e5c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
