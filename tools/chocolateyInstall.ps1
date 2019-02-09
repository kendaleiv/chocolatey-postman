$packageName = "postman"
$fileType = "exe"
$silentArgs = "-s"
$url = "https://dl.pstmn.io/download/version/6.7.3/windows3"
$url64 = "https://dl.pstmn.io/download/version/6.7.3/windows64"

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64
