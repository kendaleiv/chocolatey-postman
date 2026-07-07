$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.18.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b835c7cb5ba7242593f668f59dfd0215a96b19ff4949a826552a7317333f4ada'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
