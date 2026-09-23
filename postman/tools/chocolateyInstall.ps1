$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.29.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '2bf6c57fef7c669de37bee487d3a46ba4c31e80838168f39bbf4a01dd674380e'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
