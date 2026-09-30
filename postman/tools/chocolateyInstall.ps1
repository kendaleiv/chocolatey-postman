$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.30.4/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '06a516fea120eca7b3f9ad37cff8eac78c584b5d599d4910aef97ef4ec502f67'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
