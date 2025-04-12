$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.40.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ed3f7a9e096e87fd72f148785147081f3f9d8ed8adf63f0fbf01c5b24638f017'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
