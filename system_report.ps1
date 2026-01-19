$väljundfail = Join-Path -Path $PSScriptRoot -ChildPath "report.txt"
"Kokkuvõttev ülesanne Practice 14" | Tee-Object -FilePath $väljundfail
"========================================" | Tee-Object -FilePath $väljundfail -Append

#ylesanne1 - nime k
$nimi = Read-Host "Mis on sinu nimi?: " #nime muutuja
$kordus = Read-Host "Sisestage arv: " #mitu korda nime korratakse

#ylesanne2
"Kuvatakse nimi sisestatud arv kordi." | Tee-Object -FilePath $väljundfail -Append
for($i = 1 ; $i-le $kordus ; $i++) {
    "Tere, $nimi! ($i)" | Tee-Object -FilePath $väljundfail -Append
}
"========================================" | Tee-Object -FilePath $väljundfail -Append

#ylesanne3
"Kuvatakse süsteemiinfo." | Tee-Object -FilePath $väljundfail -Append
"Arvuti nimi: $env:COMPUTERNAME" | Tee-Object -FilePath $väljundfail -Append
"Sisselogitud kasutajanimi on: $env:USERNAME" | Tee-Object -FilePath $väljundfail -Append
"PowerShelli versioon: $($PSVersionTable.PSVersion)" | Tee-Object -FilePath $väljundfail -Append
"========================================" | Tee-Object -FilePath $väljundfail -Append

#ylesanne4
"Kuvatakse kolm töötavat protsessi." | Tee-Object -FilePath $väljundfail -Append
Get-Process | Select-Object -First 3 | Tee-Object -FilePath $väljundfail -Append
"Kuvatakse kolm teenust koos nende olekuga." | Tee-Object -FilePath $väljundfail -Append
Get-Service | Select-Object -First 3 Name, Status | Tee-Object -FilePath $väljundfail -Append
"========================================" | Tee-Object -FilePath $väljundfail -Append

#ylesanne5
"Kontrollitakse PowerShelli versiooni." | Tee-Object -FilePath $väljundfail -Append
if($PSVersionTable.PSVersion.Major -lt 5) #
{
    "Praegune PowerShelli versioon on alla 5." | Tee-Object -FilePath $väljundfail -Append
}
else
{
    "Praegune PowerShelli versioon on sobiv." | Tee-Object -FilePath $väljundfail -Append
}
"========================================" | Tee-Object -FilePath $väljundfail -Append

#ylesanne6
Write-Output "`nVäljund kuvatud konsoolis ja salvestatud faili $väljundfail"
"========================================"

#ylesanne7
Write-Host "========================================"
Write-Host "Script finished succesfully"
Write-Host "========================================"

Get-Location