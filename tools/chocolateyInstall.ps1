$packageName = "postman"
$fileType = "exe"
$silentArgs = "-s"
$url = "https://dl.pstmn.io/download/latest/win?arch=64"

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
