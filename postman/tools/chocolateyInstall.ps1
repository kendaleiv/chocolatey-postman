$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.23.8/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '00ae18ffc1b565a3a3bff0cdb54e42fe6f5dc2896feaf02893e075b9b0d8af2d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
