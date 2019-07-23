$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.3.4/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.3.4/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '762B812D6F0A22D8E7F7829D606ACB50C716364FBB5966F4B266FECDB9DC7B88'
  checksumType  = 'sha256'
  checksum64    = 'A3DA95DC062E6401C6DD711FAC7F82D70B4D259C3C584FA493F4DFF3E288BA5B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
