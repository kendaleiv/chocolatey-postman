$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.13.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'be873b49868ba2e47401a46e3526788fbc662c74a13f0460120ba1464cf34308'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
