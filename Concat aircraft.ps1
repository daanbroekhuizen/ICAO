Remove-Item "output\Aircraft.txt"

Get-ChildItem "Aircraft\*.csv" | ForEach-Object {
    $lines = $lines = Get-Content $_  

    $linesToWrite = $lines | Select-Object -Skip 1

    Add-Content "output\Aircraft.txt" $linesToWrite
}