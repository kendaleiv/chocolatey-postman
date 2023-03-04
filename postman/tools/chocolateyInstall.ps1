$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.11.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e67f9a86db6b9758ebb6429a6613af0eede4888bf9d6b9c3f33d6132965cf242'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
