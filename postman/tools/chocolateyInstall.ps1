$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.37.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '45024875545ef30a49a7ce4af86a97bf2110c5929ca53bf614a22c6390453269'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
