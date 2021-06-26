$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.7.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.7.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '64539e3e3b0a571e7864ba83b3401a3a614a36f889425cc0617ca906de85eee3'
  checksumType  = 'sha256'
  checksum64    = '4dc01eb48cea6fb942c0a1c603df4be5feb01424e41d08308f29ffe68dccbe20'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
