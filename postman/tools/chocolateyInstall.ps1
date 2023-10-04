$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.18.10/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0dee9e98e652018e279ada9dc905d64587fc13ffe915b747aac041d4ab78fec8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
