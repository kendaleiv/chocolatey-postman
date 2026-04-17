$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.6.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '9f9178d6c3027b2a6d371359887e14e280dbdbccdaed340358c3443cbbaeef3c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
