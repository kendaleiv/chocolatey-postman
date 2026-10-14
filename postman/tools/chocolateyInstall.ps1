$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.32.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '52910b238e4f2d9d091de353df1508581fd4623ee7a9d23cc63ef4b249ea9be7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
