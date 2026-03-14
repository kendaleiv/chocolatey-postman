$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.1.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'a0945d3c63461c634fcf58542582d232a55c013c9df76bd3acb924a1fbda5d76'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
