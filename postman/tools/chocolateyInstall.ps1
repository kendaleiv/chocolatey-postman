$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.32.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'eb56eebfdd0104a1c579cdeac22f99cd11049b5a7cf36c79f6d26a310d56def7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
