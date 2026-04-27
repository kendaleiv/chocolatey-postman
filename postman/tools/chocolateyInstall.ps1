$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.8.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '83a0f062359557825a34eb4db543242e603709e9a8bee0a56284b0ea96fe418a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
