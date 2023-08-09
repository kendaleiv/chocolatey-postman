$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/10.16.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1ae008518035cd5d8d80ab3a9060ca2638b9f0973a78d842833a1692f5566f47'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
