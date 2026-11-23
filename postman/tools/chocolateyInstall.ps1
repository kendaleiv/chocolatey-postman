$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.38.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'd188d9099bd724a443e658ecba4e99f8b196cff6be15a98e63c168d52c17c679'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
