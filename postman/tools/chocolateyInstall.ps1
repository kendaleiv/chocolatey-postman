$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.5.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '69c2e120d271dba4d1a7f773dd11ca8289ea40b5f2a5a41297e1eb4d95ce1e7c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
