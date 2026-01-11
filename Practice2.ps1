$tabel1 = @{Nimi="John","Joe","Mary";TöötatudPäevad=12,20,18} #tabel inimeste töötatud päevade kohta
$tabel2 = @{Nimi="John","Joe","Mary";PäevaPalk=100,120,150} #tabel inimeste päeva palga kohta

#arvutame välja iga inimese palga
$palkJohn = $tabel1.TöötatudPäevad[0] * $tabel2.PäevaPalk[0]
$palkJoe = $tabel1.TöötatudPäevad[1] * $tabel2.PäevaPalk[1]
$palkMary = $tabel1.TöötatudPäevad[2] * $tabel2.PäevaPalk[2]

#teeme uue tabeli ning lisame iga inimese palga
$tabel3 =  @{Nimi=$tabel1.Nimi[0],$tabel1.Nimi[1],$tabel1.Nimi[2];Palk=$palkJohn,$palkJoe,$palkMary}

$tabel3