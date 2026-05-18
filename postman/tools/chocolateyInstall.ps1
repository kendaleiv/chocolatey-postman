$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.11.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '5bc0699508cde8e03d5046416978e3c26cefae4322c56cd056b9f134bfd4e22a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
