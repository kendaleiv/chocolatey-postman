$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b0b093cc0a789f0a828d7f3a95f2dc6395f0de0202b03e90bf9d1c4fdf6fe7a4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
