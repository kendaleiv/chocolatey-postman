$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.25.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '18f8f1180126a4e2c4bad48bd841dac6ce33be861abdafe24fcecf932c07d466'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
