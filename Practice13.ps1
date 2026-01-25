
function ruuduPindala {
  $pikkus = [int](Read-Host "Sisestage ruudu kulje pikkus: ") #sisestatud arv
  $pindala = $pikkus*$pikkus
  "Ruudu pindala on: $pindala"
}

function nelinurgaPindala {
  $pikkus = [int](Read-Host "Sisestage nelinurga esimese kulje pikkus: ") #sisestatud esimene arv
  $laius = [int](Read-Host "Sisestage nelinurga teise kulje pikkus: ") #sisestatud teine arv
  $pindala = $pikkus*$laius
  "Nelinurga pindala on: $pindala"
}

function ringiPindala {
  $raadius = [int](Read-Host "Sisestage ringi raadiuse pikkus: ") #sisestatud arv
  $pii = 3.14
  $pindala = $raadius*$raadius*$pii
  "Ringi pindala on: $pindala"
}

function kolmnurgaPindala {
  $alus = [int](Read-Host "Sisestage kolmnurga aluse pikkus: ") #sisestatud arv
  $korgus = [int](Read-Host "Sisestage kolmnurga korgus: ") #sisestatud arv
  $pindala = ($alus*$korgus)/2
  "Kolmnurga pindala on: $pindala"
}

while ($true) {
  ""
  "=============Main Menu=================="
  ""
  "Palun valige tegevus"
  ""
  "1: Ruudu pindala"
  "2: Nelinurga pindala"
  "3: Ringi pindala"
  "4: Kolmnurga"
  "5: Valju"

  $valik = Read-Host "Sisestage oma valik: " #valik

  if($valik -eq "1") { #kui sisestati number 1
    ruuduPindala
  }
  elseif($valik -eq "2") { #kui sisestati number 2
    nelinurgaPindala
  }
  elseif($valik -eq "3") { #kui sisestati number 3
    ringiPindala
  }
  elseif($valik -eq "4") { #kui sisestati number 4
    kolmnurgaPindala
  }
  elseif($valik -eq "5") { #kui sisestati number 5
    "Valjutakse programmist."
    break
  }
  else {
    "Sisestati vale number. Programm valjub."
    break
  }

  "Tehke jargmine valik"
  ""
  "1: Tagasi peamenyysse"
  "2: Valju"
  ""
  $valik2 = Read-Host "Sisestage oma valik: " #valik

  if($valik2 -eq "2") { #kui sisestati number 2
    "Valjutakse programmist."
    break
  }
  elseif($valik2 -ne "1") { #kui sisestatud number ei ole 1 ega 2
    "Sisestati vale number. Programm valjub."
    break
  }
}