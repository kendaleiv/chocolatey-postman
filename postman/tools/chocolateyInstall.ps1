$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.37.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '086c3f3b26dd99a48603f7ab1846551c3fc58366f63cd7ac3e2cfdef0ac85756'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
