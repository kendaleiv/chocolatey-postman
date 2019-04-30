$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.0.9/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.0.9/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '410280A59023D07879375A959F29D646326E830A0B69400B206A55159D8AF2FE'
  checksumType  = 'sha256'
  checksum64    = '561F01A72E33EC83A5E83A3512D899976DBA3E6C324E470DAD95A325365D06D5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
