$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.18.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2519f6ba4469ca5125ab7f93d74637408483ab201b45d52479d964e841a44a3d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
