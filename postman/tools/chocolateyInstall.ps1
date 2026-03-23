$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.3.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7d101eede85d49071923a84735b1a1b4586b19a483775e400f9cc74095ae28fe'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
