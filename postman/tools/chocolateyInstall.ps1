$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.20.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'eff360d93e80cc37d1e5556f07ee5443f5e4ac80b128f0ff18da55fffcc3a7a6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
