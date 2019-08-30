$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.6.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.6.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'AFDDAF0FD8FDF19A4EEA9F08D7105A0AAA9B6DD5408E72CE6D48462A737546FE'
  checksumType  = 'sha256'
  checksum64    = 'EB1A29D69F45F0D6524CD4047FBE958E3A7E7B7229CB2DF72FB259C74E0C496C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
