$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.15.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.15.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'F11177702A4DF0DC1E0B877CB0E071A12CE65F710304E40570737016D9287F41'
  checksumType  = 'sha256'
  checksum64    = 'B510B5A28E0BF45A8019536C676490EA114E8FFCB294C96B7C0EC5A2CE43AD2C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
