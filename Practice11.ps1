#kasutajal palutakse sisestada kaks arvu ning siis kysitakse missugust
#tehet nendega teha soovittakse

[int]$arv1 = Read-Host "Sisestage esimene number: " #esimene arv
[int]$arv2 = Read-Host "Sisestage teine number: " #teine arv

#prinditakse menyy
Write-Host "Kalkulaator" -ForegroundColor Green
Write-Host "1: Liitmine" -ForegroundColor Yellow
Write-Host "2: Lahutamine" -ForegroundColor Yellow
Write-Host "3: Jagamine" -ForegroundColor Yellow
Write-Host "4: Korrutamine" -ForegroundColor Yellow

$valik = Read-Host "Sisestage oma valik: " #sisestatud menyy valik

switch($valik) {
 1
   { # kui sisestati number 1
     $vastus = $arv1+$arv2
   }
 2
   { # kui sisestati number 2
     $vastus = $arv1-$arv2
   }
 3
   { # kui sisestati number 3
     $vastus = $arv1/$arv2
   }
 4
   { # kui sisestati number 4
     $vastus = $arv1*$arv2
   }
}

#prinditakse vastus
Write-Host "Vastus on: "$vastus