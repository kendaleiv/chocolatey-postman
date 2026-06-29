$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.17.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '06081aab7d294c7aa1913064ea0c8f6b9c12b3cc248ea851e172a5c4b8ee75a4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
