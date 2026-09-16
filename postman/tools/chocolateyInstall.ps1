$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'd37a1f185c750e18c1945177288a3b5b87d268175eea34fc4bf10c825039dc93'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
