$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.12.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6a6de73d8a4f40395724fbbf26e493ae2f66011e5a6e92fde76a14d811eaa860'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
