$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.34.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4b1afdc49185abc9651974bf63ea5c34c691b24002a7af4525f4a66cbb02bb1d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
