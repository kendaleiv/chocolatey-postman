$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.21.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'd1c2326a366edd4fc600d13a2b6c917fa50b47aad49a065d2ae0026de56d12c9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
