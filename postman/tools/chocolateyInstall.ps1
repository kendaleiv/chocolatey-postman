$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.33.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1f86e040250bad9baf8618f93a4a5f7ac52977a106490ec022f780b209f1988f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
