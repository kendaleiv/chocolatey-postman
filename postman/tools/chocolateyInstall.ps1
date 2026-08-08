$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.22.8/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'c3b93a45d2378135135ec9bea99657f39c405b6b218d16a92a94228bf45ac032'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
