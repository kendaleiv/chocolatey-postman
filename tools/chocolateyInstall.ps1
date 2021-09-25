$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.0.3/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.0.3/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '4D003ABA746D95F9779C447E9E2E7CB1F8EF3A67EF69A0E74776B271A3980379'
  checksumType  = 'sha256'
  checksum64    = '74C44EE2D061CD1209AF30C8D3D4FB5569E08B58EA6309347716DAE3358EFA12'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
