$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.36.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '17be37350c002ff83aeb5366505c5b09d3094ef44d806ddecd73fb1ae804e55e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
