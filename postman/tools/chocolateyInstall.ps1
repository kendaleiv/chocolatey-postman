$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.9.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1b2925a2ef2cc3cbcd26558648e157ea7d2e6bbd959a73f241f2d875cf240eae'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
