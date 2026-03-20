$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.2.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'eaec250982965a35c7d421994ee42b2cf8afd86448c97a7dee4c7cd6a316e0d0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
