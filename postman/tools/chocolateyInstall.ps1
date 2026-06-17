$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.15.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '1502aa934af2b86ea5da9c200acd744dfa1de5bbdd06d054e817eea243100fb7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
