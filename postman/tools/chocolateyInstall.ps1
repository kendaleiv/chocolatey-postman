$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.4.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2a3a5f9cf584e5ca26e2217900f0d7c9d42cb4c0ca59ed5899d3a222b8568254'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
