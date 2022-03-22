$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.4.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2adcce5b4f15e3347b56c899732b94f10310af30a08d33fed96fd0a6df992156'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
