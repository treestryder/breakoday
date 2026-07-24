$projectFolder = Resolve-Path "$PsScriptRoot\.."
Write-Host "Project Folder: $projectFolder"
$book = "$projectFolder\book\The Chronicles Of Break O'day.txt"
&"$projectFolder\whitewashers\bin\gutcheck_u\gutcheck.exe" $book > "$projectFolder\whitewashers\_gutcheck.txt"
