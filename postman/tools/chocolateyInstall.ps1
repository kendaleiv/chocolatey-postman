$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.7.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7a1412961f54e72950ef9e94c79cf497d55066e6364450209b1a11bbe912942b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
