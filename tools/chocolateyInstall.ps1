$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.10.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.10.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '3550105500CC3BD9CB27E1C3C3493EA1861ACB3CCF969E0F214B695463699AC1'
  checksumType  = 'sha256'
  checksum64    = '0724935A6168CA1082ABB5D78EEAACF9BA577E7DEC852C7BD1F448F6C9EAB5A0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
