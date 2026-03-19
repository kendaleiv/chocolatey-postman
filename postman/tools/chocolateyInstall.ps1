$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.2.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4f6b9f39632f46f68a8ea4de4c353279fdfd2b64552803dfdc102f79a73184b2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
