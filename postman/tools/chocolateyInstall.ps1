$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.15.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5b0438beb1d7cc7de91a3aa0db6fa1fe7de3425f07d7fc08e1268af48f740abc'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
