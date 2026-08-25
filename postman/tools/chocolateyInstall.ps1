$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.25.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f26f7f567c300d505fe7dacbbaed42608cb69c1103ddd4f1df1157eaecdc08be'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
