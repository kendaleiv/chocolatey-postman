$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.31.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'aeb60f26cfbe23cd23586219a445f030ec3bc989993d9d4b0dd9110319d5d966'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
