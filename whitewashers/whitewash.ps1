$book = Resolve-Path "$PsScriptRoot\..\..\book\The Chronicles Of Break O'day.txt"
&"$PsScriptRoot\bin\gutcheck_u\gutcheck.exe" $book > "$PsScriptRoot\..\_gutcheck.txt"
