$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.21.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'a5c9629035213d2d16c452ff84e2412ae06ace6f288fea9543041ce8487aa26d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
