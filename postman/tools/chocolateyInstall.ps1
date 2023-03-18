$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.12.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'bdd6340c99846f4481346e9936b0866e4c7a510e7480117b69e12dd2265bc46a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
