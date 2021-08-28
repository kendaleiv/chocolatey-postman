$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.11.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.11.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'FA9F5F631C4777AC0F1B6D61EC7AEBCDCF1B55CAFAE96EB51BDA49BB52635176'
  checksumType  = 'sha256'
  checksum64    = '76AD2A504764D447C948F6DDE8A7BC64582AAA4E0E0ED27D380154B901B7F0D5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
