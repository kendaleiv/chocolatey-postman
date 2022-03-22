$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.15.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '452d68a14e65a1bc2c814f472945379e87bf62d650f7e9a1eec96f8343349c94'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
