$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/6.7.4/windows32'
$url64      = 'https://dl.pstmn.io/download/version/6.7.4/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '6121A2A58D396A87621B4AC805CDE02416BF39CB2BFD8207A6DDD5FA2ED219F1'
  checksumType  = 'sha256'
  checksum64    = 'AF2785E527A8C6E1C2B0156DA67701A4C8F005212B7E0D3CA96F7FA13E25DF07'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
