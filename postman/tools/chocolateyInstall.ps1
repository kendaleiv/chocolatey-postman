$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/11.13.0/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'f462d95a89bdee83a6b09abf4a1fa73781b8144e907be21f19d8a3a18cf28aef'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
