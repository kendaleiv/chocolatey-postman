$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.20.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4d1b199005f2c564a08be89af7252ec716e36aa1bb82e74e7fc13ed449bbb615'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
