$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.6.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ef677cc7ead3bef96174207d9bb202ec68bf9a66103d355ab40ded3ee81098d3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
