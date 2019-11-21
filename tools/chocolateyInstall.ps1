$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.12.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.12.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '2D5E30DF8F2ADAB0624B5E1BE9CBA807AB8AA1942A369E46D23368C848E2869F'
  checksumType  = 'sha256'
  checksum64    = '152AAC7B97F58851437CF27EBCFB313FE06FDB24FEEE8BF324A59D3708DA7317'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
