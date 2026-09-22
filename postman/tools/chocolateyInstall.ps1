$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.29.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'd2c55d80740a639b2a0872f8d8cd6e24c12685e66ad1e8f59b7faae80d051e41'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
