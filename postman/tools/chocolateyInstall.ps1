$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'd3b15d21905cd4d474019568221b70abdc168b285f86293cf3c864f8e521f66a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
