$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.19.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4b7ea88fe79033a0222be29ca23cedc770ed5234f42f35f41e70faaf76fa2472'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
