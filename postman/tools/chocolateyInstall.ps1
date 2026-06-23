$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.16.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '80a195edab6fae57b890162115c22923eb7e524ab28a858d823b3cf1298db253'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
