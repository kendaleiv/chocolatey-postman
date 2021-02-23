$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.0.6/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.0.6/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'F66EE127224583315B23DDF383E19ABFE6219ABD451B72AC8ADE3E3A0D5FC237'
  checksumType  = 'sha256'
  checksum64    = '21F86612F802E48CA2B67BE22FD4AA112B6638FE3F7184974667D39F79B13A9E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
