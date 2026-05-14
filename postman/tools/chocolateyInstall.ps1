$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.10.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '219a06bef270b3f5b58bc165654b9e91664ab6158eacf7fdf2b7ad1cc2366df6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
