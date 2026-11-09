$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.36.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1dbb7c737dc8fade5089b0814cef82e9043d7c427eb6ad5c084e289e0a1c8d37'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
