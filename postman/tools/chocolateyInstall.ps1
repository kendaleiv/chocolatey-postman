$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.17.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '22804839d74687064d3b34756980ddf571dbcbfcf84132b6c7f79b751dc8724f'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
