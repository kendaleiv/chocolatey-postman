$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.29.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.29.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '45165602F1ABADF2C45D5E8714800F8A59DE93BA4C4758726B4F970C31512C8A'
  checksumType  = 'sha256'
  checksum64    = '8823D04D6777F603B531773A853317F6F8216412AFECD0677195EF9FBFF2518F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
