$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.26.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b65b0fa52a2061bdab1d066d4f3b4a9be323c6566bce34bb50784271e0834603'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
