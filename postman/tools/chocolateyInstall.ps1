$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.21.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '7b4409fe7be5b57e59e60a32a9c0961e4419b98eda08ae7f05188a3b791cfd83'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
