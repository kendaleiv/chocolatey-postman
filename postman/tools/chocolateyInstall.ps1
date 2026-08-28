$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.25.7/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = 'ebc1f9eaebd88bebfbc2ce94ac218c2d6480f591784c0faf2ca5b28ffef47b90'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
