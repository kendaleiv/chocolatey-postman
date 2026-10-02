$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.30.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '11b5243f7b898667ec01757cdbd46eb08181080f1aa0f183e2ebe5bc77597b17'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
