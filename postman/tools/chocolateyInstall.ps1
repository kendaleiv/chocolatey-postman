$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.24.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e054256c2e2b840c2e6f95547832d1e3dad096faf6775bec691f318cfff00bf7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
