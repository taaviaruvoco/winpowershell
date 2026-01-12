$värvid = @("Red","Green","Yellow","Blue")

$tabel = @()

for($i = 1 ; $i-le 20 ; $i++) {
    $number = Get-Random -Minimum 0 -Maximum 3 #saadakse juhuslik arv vahemikus 0-3, millega maaratakse varv
    $rida = [PSCustomObject]@{ RollNumber = $i; Group = $värvid[$number] } #luuakse ajutine objekt mis lisatakse uude tabelisse
    $tabel += $rida
}

$tabel