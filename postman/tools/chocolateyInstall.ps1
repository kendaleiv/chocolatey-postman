$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.15.8/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f5a551cc4da4fccb0b7a1e6606eb0aa9cf2d380346b157c267df590d14316530'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
