$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.18.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '40097cfb35450c965cc665090793cd8d4f49870ab7286e1690885d38de60f488'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
