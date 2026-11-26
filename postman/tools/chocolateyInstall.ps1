$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.38.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '70a305b3005f93351e84b4720197fe307cf594f85a9f8f4b57d8b67189e16f52'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
