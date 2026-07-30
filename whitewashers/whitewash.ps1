$projectFolder = Resolve-Path "$PsScriptRoot\.."
Write-Host "Project Folder: $projectFolder"
$book = "$projectFolder\book\The Chronicles Of Break O'day.txt"

Push-Location "$projectFolder\whitewashers\bin\gutcheck_u" -Verbose
.\gutcheck.exe $book > "$projectFolder\whitewashers\_gutcheck.txt"
Pop-Location

Push-Location "$projectFolder\whitewashers\bin\gutspell_u" -Verbose
.\gutspell.exe $book > "$projectFolder\whitewashers\_gutspell.txt"
Pop-Location

Push-Location "$projectFolder\whitewashers\bin\jeebies_u" -Verbose
.\jeebies.exe $book > "$projectFolder\whitewashers\_jeebies.txt"
Pop-Location


$lineCount = 0
$widths = @()

$startLine = 75
$endLine = 13788

Get-Content $book | ForEach-Object {
    $lineCount++
    if ($lineCount -gt $startLine -and $lineCount -lt $endLine -and -not [string]::IsNullOrEmpty($_.Trim())) {
        $widths += $_.Length
    }
}

Write-Host "Line Count: $lineCount"
Write-Host "Average Width: $($widths | Measure-Object -Average | Select-Object -ExpandProperty Average)"
