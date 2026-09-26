$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.29.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'eff594b56694059aa9407aef5edb651b15ceab56dc8c65cc3e5d365dbc26beff'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
