$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.14.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'dc00b9c114df50bb85c1a0f28c92d711476b91a788f8aa5d486708aceef8cf85'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
