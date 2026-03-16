$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.2.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0191c96281b89ece49cce73ec04f54152a5f84eeebaa7fe8764e9aa6e658b915'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
