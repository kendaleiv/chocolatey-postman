$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.23.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6ee3a5ae25a164f32e88f8cf7593d205c78956c7eb094c334e69313132ab7c3e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
