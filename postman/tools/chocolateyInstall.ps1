$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.30.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'b7e7245b7e44fff61a210649d30fcf39753519587563e1c3010129e2fc5960c6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
