$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.5.6/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6718b6ff4add0966dd9fb4aee4affa8e978ccdf53e973f4d2c499a30a1ce004b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
