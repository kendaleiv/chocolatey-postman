$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.26.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.26.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '9BF78E02AC072F55663AB756CFFAAB7EB4FA09593E6A40A8DE5E9B4128255CF2'
  checksumType  = 'sha256'
  checksum64    = '7A5E9E3DA8F8BCB540EF8A3EC381115BFD6549F7D35FFE0FB0C934F3618EA1E5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
