$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.14.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.14.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'BD1FF7C3DF82C3490AFE1027348EA9DEC91F3EDB2C1C23BB4BCB17143CD86A47'
  checksumType  = 'sha256'
  checksum64    = '2F131A7DAAB79985C956B80F30DC2C05A119E614235344EB60CCD09C534C9323'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
