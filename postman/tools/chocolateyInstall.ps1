$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.1.5/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.1.5/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '7dae2c73ac8af9c6e1c9ff19bfb4bfe9ddece91df9afe9b0b1abbf9d059a3fed'
  checksumType  = 'sha256'
  checksum64    = 'ae2597801185aee52d55c42f82bdba1ef17d432cf46823ae0c4e90ae33084267'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
