$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.18.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b500525301a0bdcecb810883ea4f69120b9d586176c78c7539e7af6764d3ed5c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
