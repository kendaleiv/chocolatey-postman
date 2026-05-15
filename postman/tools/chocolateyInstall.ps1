$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.10.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7f25f88d9775d6f40dd5246b9d855056ff3a0ad6cf38ec83fa5f232f92dfd489'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
