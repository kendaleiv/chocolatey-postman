$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.16.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.16.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'D1C12F6EF20486CACA563AA9F9366F82A7D619D7A612119D3DFEDF87324BAD44'
  checksumType  = 'sha256'
  checksum64    = '0029065FB039FA52AE0D327E8012C14F71B8531A38015AAA63F0CB8299DB9071'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
