$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.23.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ce98b5323347d190a291c26b95faef4759ccc9a4c90b31191d986ac774a83912'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
