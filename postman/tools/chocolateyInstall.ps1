$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.1.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'cb93fc7871ed6eb06d91c1e59816f1bb209292bfcedf3049133fb42da10fa097'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
