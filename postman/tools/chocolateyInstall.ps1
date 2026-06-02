$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.13.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b4523270278af2086ebfa98154bbd9af778efbbc57592d8b51a255e8e3d19ab2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
