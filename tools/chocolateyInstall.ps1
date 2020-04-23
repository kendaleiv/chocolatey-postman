$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.23.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.23.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '01D4E4B454355FF83F7C417E071C57F75A2798E6E060497AAC86C0FDCC9F367A'
  checksumType  = 'sha256'
  checksum64    = 'EE53FFDA138FD76BF11EC46CE6F12AB74768771300D321BDDDA1E422FB7BB34A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
