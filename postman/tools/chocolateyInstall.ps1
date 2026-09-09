$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.27.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e6d2e24b63bceb06845c7ea00ce400ecaed41ff1a508c5977cbaf58c727ddb65'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
