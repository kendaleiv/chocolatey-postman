$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.38.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'dfe494fa5a19434a1b28f150c35b4463abcb7cc094dc8c9b74cbb7c0191baeb2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
