$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.8.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.8.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '6980B7CD9D77121578328AFF7DA03C80D77B5F88645F6BF46A49A1FFC3FDBD32'
  checksumType  = 'sha256'
  checksum64    = 'CB0872DB41ABEFC0C6D572F8CF0EC52677762C1E1C1C15CA205C26AC468724ED'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
