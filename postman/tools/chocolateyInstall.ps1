$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.26.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '18e26e081dbdb7db6d42a0043dafd2ed645453a60e333f190bd9d37e85af59af'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
