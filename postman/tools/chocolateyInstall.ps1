$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.46.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f0608ccb8dce2639a78e909fbf9044ce403adf5e63148763d32c1b8f33fc6ee4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
