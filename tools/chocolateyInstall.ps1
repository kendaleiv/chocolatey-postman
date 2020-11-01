$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.34.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.34.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '0EBA992857CFDB741049447FC18AF96C0CE51DF4949629D7784BB3B99EB4FA73'
  checksumType  = 'sha256'
  checksum64    = 'A383A0673389351E299A69865F73FADACD9EACDB64032E90EED47209D2565D59'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
