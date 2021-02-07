$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.0.4/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.0.4/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '58AC09C6E6BD859E16EF872FD2587A129717DDB7995C7FEE398B4964740425C5'
  checksumType  = 'sha256'
  checksum64    = '8A3F97D4EB8526235414D86BC2C567829810137C8172C4AC1B77FB75DBAB5DF1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
