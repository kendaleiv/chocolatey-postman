$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.29.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0e385b91b5ac81bcbaffb98782973ec2b8a0995324a28392e2e35f51baaaf950'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
