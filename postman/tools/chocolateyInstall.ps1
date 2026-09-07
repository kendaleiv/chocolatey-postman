$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.27.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'c464a8167b0f748fedcb6a152ffcde4dda8c5b957f4ee0854ac1b66be2e7e58e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
