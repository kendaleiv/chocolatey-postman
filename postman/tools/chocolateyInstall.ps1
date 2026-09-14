$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.28.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '137341979344b77714af4c6c5d8f2ee0658c21bbcbda0daadabedbf670d6d353'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
