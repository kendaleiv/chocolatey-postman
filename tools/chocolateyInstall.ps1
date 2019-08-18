$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.3.6/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.3.6/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '4711897CE5A227690D3682178503768B1A03805E1C1EDB06FBCA91D5B0B9309B'
  checksumType  = 'sha256'
  checksum64    = '95C450DD722DF7346D3E2A87E9CF7B0BA98C6E945F5109D252C669DCEFAB2CF5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
