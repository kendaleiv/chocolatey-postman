$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.13.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '3b93bcaac8e6724ca73a85653cc1f86b1b44ef337a20b80530183fd0acf5b114'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
