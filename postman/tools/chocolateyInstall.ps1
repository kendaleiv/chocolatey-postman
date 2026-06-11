$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.14.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '082909edc16f40b4598e7a7e6fd0b64d176c2bcbb63b88c094634a2bb9dd141e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
