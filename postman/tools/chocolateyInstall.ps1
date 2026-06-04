$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.13.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '96d5edf6cb603fd02fe1ce87974bd72323046190ef290019a9d3776405d3453c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
