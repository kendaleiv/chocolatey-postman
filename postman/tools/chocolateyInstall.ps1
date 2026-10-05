$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.31.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '6f492f1bcca8e60bc9ef7c0a79a8e976008ed00dc23bf0b2cf5c7078011c6afe'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
