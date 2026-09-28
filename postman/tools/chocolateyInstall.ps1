$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.30.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ad90bc262f02603634ee9498a42657d3d6e69baead65b9b245ed4837d942f18e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
