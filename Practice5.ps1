
Write-Host "Practice 5 ülesanne 1"
#naidatakse avatud Notepadide protsesside nimesid ja
Get-Process | ?{$_.ProcessName -eq "notepad"} | Select ProcessName,Id  | Format-Table -AutoSize

Write-Host "========================================"
Write-Host ""


Write-Host "Practice 5 ülesanne 2"
#algul kuvatakse mitu faili asub C:\Temp\Test kaustas
#seejarel kuvatakse info selles kaustas oleva .csv faili kohta
#Write-Output (Get-ChildItem -Path "C:\Temp\Test")

Write-Host "Kuvatakse C:\Temp\Test kausta sisu"
Get-ChildItem -Path "C:\Temp\Test" | Out-Host
Write-Host ""

#kuvatakse info .csv faili kohta
$fail = Get-ChildItem -Path "C:\Temp\Test" | where {$_.Name -like "*.csv"} | Select Name,Length #kogutakse info faili nime ja suuruse kohta
$suurusKB = $fail.Length/1KB
$suurusMB = $fail.Length/1MB

Write-Host "Faili nimi: "$fail.Name
Write-Host "Faili suurus kilobaitides: "$suurusKB
Write-Host "Faili suurus megabaitides: "$suurusMB