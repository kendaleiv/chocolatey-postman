$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.10.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2ca885006d7c4b39f5ea6cb92e931e954f1f9224b2abc3132257494c0acf9c09'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
