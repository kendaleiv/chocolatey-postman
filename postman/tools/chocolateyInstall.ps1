$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.26.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '4ce4c90d91588e8a88dba23da696c711de3e42484bc7bacb02dca96daad1715d'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
