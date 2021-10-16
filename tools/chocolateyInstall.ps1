$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/9.0.7/windows32'
$url64      = 'https://dl.pstmn.io/download/version/9.0.7/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '05C7E35D95F46B0836D92BED1BCA4BE1131C1F98D9FAFCE7BB65991EBA3DE7E0'
  checksumType  = 'sha256'
  checksum64    = '801D2D4CC529DE4C0DA7588C8C64D0E30F0743CDFB64414C9082FBD44305A94B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
