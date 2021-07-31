$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.9.1/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.9.1/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'BFAF003137DE67B7066104A8D4E58F56ED0239A12ADB01DBAFBC45B492B87F37'
  checksumType  = 'sha256'
  checksum64    = 'BA99BD71F8EF1A3777058414A343CCEF1F1F5548FE06383272C9D4D42B67C336'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
