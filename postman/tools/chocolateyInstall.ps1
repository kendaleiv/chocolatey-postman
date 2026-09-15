$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '710d6bbc5dee9d1800c48bfc25c17b7c7372a17a121b65d618c9a49880cac947'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
