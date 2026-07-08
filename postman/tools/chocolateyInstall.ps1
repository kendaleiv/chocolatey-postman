$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.18.3/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '56b7dfaedf5cbf7cc72fb312e085a9aae80eadbc3c2ac670cac1724f80fd57ed'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
