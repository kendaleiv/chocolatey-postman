$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.32.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '0e3c1dce693d9c612faf9ac83aed88ae94ec608797bec0403bcff0670797ddf4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
