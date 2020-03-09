$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.20.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.20.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '378779882F3FAFD85FF6C7C96473F279A49FF9A6615B0D9714CF70FDB98E741B'
  checksumType  = 'sha256'
  checksum64    = 'EC4A417CCEF93ED10D3FFEEDF97C5DE1FC2DB2151162BFF0AE8498015C0BFC1B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
