$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.16.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '02f3ec4e36505323470e73ccc265b96242a7a95f0b5820b7030cb0ec7773185a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
