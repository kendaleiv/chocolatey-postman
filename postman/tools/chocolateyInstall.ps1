$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.36.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b8b7f79c39893762e8686841741cbd14e38613fff276aaacdd20422c8325bf78'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
