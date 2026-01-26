#skript küsib kasutajalt tema ees- ja perenime ning looba selle info baail lokaalse kasutaja

$eesnimi = Read-Host "Sisestage oma eesnimi: " #eesnimi
$perenimi = Read-Host "Sisestage oma perenimi: " #perenimi

#ees- ja perenimi liidetakse kokku ja muudetakse väikesteks tähtedeks
$kasutajanimi = ($eesnimi + "." + $perenimi).ToLower()
Write-Host "Loodav kasutaja on " $kasutajanimi

$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force #kasutaja parool

#kasutaja loomiseks kasutatav käsk
$kasutajaLoomine = New-LocalUser $kasutajanimi -Password $parool -FullName "$eesnimi $perenimi" -Description "Lokaalne kasutaja - $kasutajanimi" -ErrorAction SilentlyContinue

if (-Not $kasutajaLoomine) { #kui kasutaja loomisega ilmnes mingi takistus
  Write-Host "Kasutaja " $kasutajanimi " loomine ebaonnestus."
}
else { #kui kasutaja loomisega ei olnud takistusi
  Write-Host "Kasutaja loomine onnestus. Loodud kasutaja info: "
  Get-LocalUser -Name $kasutajanimi | Select-Object *
}

Write-Host "Hakatakse eemaldama kasutajat " $kasutajanimi

try { #proovitakse kasutajanime eemaldamist
    Remove-LocalUser -Name $kasutajanimi -ErrorAction Stop
    Write-Host "Kasutaja $kasutajanimi eemaldamine õnnestus."
}
catch { #kui tekkis mingi tõrge
    Write-Host "Kasutaja $kasutajanimi eemaldamine ebaõnnestus."
}
