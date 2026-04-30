$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.8.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'bc174612ebf20295fefafd7ae5f8e2d47ea8fc46476336cfc83edb3b7d8ed8a3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
