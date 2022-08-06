$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/9.27.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '9a1c52556ff01da202eb78e648b4d3bfc3f7b03192a1358db57cf1ad385291e3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
