$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.7.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0d047ef216d62540c5d68b5a1df822ea94c0fe833800d1a6560f7b060093beb8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
