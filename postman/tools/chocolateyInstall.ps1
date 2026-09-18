$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'bba6d318dbe6b321e24e1231f9463f813e26b0b9ae1c0d65dd4215575e1a9226'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
