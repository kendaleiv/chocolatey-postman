$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.12.2/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.12.2/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'C5CF9103C866525882BF2902AF80D827A0CFBBFF47DA49D407F56D6310F0526E'
  checksumType  = 'sha256'
  checksum64    = '09E5AF98CA01CD52253E46E7DE474FE4F120EF88433A8CB090878D1E954B2089'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
