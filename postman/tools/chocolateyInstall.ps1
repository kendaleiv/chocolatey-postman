$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.33.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '50afbb4d3877b8f673fbd606753603cf738e3c7a0e7d42080d3f7bfd922da638'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
