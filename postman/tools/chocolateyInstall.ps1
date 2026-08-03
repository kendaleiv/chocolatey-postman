$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.22.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'e22893f590746ae50280c6ba8f39aaa0e611079083791c93ceea636cc60ba073'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
