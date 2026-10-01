$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.30.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0c30179d90ab4a6b88fdc7824f37a1d7401ce6415873734bbb4c884f13d58ebf'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
