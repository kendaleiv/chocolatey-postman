$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.10.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6ae0453eeb9d95e36c0fb02c40558a14330a3093384f0ac27ef185d015396041'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
