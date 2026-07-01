$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.17.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '938a103d30919f4462f18f7da8f4d8b8656722f7f70052c20c198dd5b13c517b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
