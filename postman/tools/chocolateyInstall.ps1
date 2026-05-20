$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.11.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7fceb29388c16cc0a306af3d5efef01a9d5593c2a77057de87e0cb5db141ae31'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
