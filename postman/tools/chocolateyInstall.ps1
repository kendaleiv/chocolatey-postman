$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.4.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e74223ce27ad3991ae2c41c73dd88f1c77566701b8689aa75558232b76bdb0e9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
