$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.7.3/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.7.3/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'EF7717828D1D5145E58D9170904CACE409DB387F80C0B8E2C5439EC260BA73AF'
  checksumType  = 'sha256'
  checksum64    = '98FB44C2A9F4599D9ED6A1E8D9AADBA8E7BB85D81F8B49DE43C628D142112279'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
