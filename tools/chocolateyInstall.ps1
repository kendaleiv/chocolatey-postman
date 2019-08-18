$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.5.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.5.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '38DEA98BA705F454AD5F23521E074D1B05F08A534684B706A27C8508227D9318'
  checksumType  = 'sha256'
  checksum64    = '30BF13EE1609E2027028074B4A4509CB564507BB058640A34EFE5A1D45E03BF5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
