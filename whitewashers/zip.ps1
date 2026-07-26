$projectFolder = Resolve-Path "$PsScriptRoot\..\"
Write-Host "Project Folder: $projectFolder"
$bookFolder = "$projectFolder\book\"
Write-Host "Book Folder: $bookFolder"
$destinationFile = "~\Downloads\The Chronicles Of Break O'day.zip"
Write-Host "Destination File: $destinationFile"

Push-Location $bookFolder -Verbose
Compress-Archive -Path * -DestinationPath $destinationFile -Verbose
Pop-Location
