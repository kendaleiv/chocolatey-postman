$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.37.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '8a8a52837236262887d6da293065532ee7209bc76925b29ce372f385fa2cd8b7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
