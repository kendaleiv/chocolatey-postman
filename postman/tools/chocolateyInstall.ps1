$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.34.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '18b2f9b6b0122801146c765ec2b91104094b7e9fd44b661db113b4ad34eaaa4f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
