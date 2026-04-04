$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.4.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'bbd8b00109801fc16c53a7a3bf2bea66c4a8196087ab481ee63d2b0bd0bd5ef1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
