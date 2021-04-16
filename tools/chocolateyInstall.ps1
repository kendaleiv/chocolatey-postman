$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.2.3/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.2.3/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '59B8507267F7C3E31A5D5F97636070E6590C95AA0DFB0F82D9D83AA0427200DD'
  checksumType  = 'sha256'
  checksum64    = 'BB11E33317F46FEABB80D0BCD41E6A2172A7CFDC334D9E7F00117159D0DD530F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
