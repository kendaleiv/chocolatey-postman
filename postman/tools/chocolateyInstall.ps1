$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.15.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4c1db727762b1a03643c0d07d22bfa382bf5a933091a5c72702cce558145235b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
