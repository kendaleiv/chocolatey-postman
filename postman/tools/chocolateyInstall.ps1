$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.31.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '108c384e8537a1657f6ef1d9ac787c20f09681bea66fe6155fa2044c2dd10602'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
