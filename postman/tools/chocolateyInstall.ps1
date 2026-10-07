$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.31.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1ee4667152b9bd21506b11b78e19e61f89ba320b7fdbe24311d2cd6c609259c9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
