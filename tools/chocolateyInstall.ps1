$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/8.4.0/windows32'
$url64      = 'https://dl.pstmn.io/download/version/8.4.0/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'EEE0C1E68201AF67A5CE26B36BE32DC080467D5AC6333E5B815B2E67C6D8E697'
  checksumType  = 'sha256'
  checksum64    = '2D4FB4DE8561E6244D628ECDF8C2E3540F40669EC04F73EE23FDFE0BE6E8217D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
