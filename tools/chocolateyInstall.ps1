$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.16.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.16.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '09FE2B642CFA8C8EAA422ED8033222CD5C113B24F4CE213A9A587F8C5DC7AA56'
  checksumType  = 'sha256'
  checksum64    = '4B5A7877E82760D58109913D09B1EECD9D2AD33BF40A3455A974D86145E4B711'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
