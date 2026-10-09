$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.31.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7b39114bfc91d16e1de2b4bbb7a620c393c216a5693567e839969a23c5cbd3f9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
