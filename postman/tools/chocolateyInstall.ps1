$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.36.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '8a58a34729c3e2fd065a28f59ef68886ff1d48d8ab2a8af71deac8e88a03ce11'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
