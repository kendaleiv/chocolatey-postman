$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.9.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ab1929b6e756e8c773a380bbb016e8953e999d56c5af91feef9d8d45b1978d6c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
