$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.32.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5bec7cd836edf8a5f997153ec839e2aaeba5899a1848765d39e155d6f297723b'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
