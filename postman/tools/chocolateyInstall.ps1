$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.14.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '81457e0eb99d0288bb2a407a67ac6c0cfc25bdc12364b57c6c5552828eb3ab3a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
