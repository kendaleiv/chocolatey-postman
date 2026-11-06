$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.35.5/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '65e46f352d355d8a29191283139e0c3bd9fcae20b1a15e112437758fee7f03df'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
