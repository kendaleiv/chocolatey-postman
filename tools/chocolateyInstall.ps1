$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.7.2/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.7.2/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'D642880BF885E73662070AA9D598908832689689C3852296BAA2D867E18312A4'
  checksumType  = 'sha256'
  checksum64    = 'B1622317712F87AC87D6CFC3A1E5110C6832541A3C88282C1D72B86CD77A811F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
