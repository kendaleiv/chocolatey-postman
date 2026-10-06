$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.31.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'a358d06c3610eb9178548f52b2ce5c28996f2b150854fa9f1e0ecaad6d77598f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
