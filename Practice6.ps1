$nimiVanus = Import-Csv C:\Users\taavi\winpowershell\students.csv #sisseloetav tabel

#$nimiVanus[0].GetType(); #uurime mis tyypi objektid on

$nimiKlass = @() #tyhi tabel

foreach($isik in $nimiVanus) { #kaime yhekaupa nimed labi ja maarame oigesse klassi
    if($isik.Age -ge 4 -and $isik.Age -le 10) { #kui vanus on 4-10
        $klass = "Junior"
    }
    elseif($isik.Age -ge 11 -and $isik.Age -le 17) { #kui vanus on 11-17
        $klass = "Senior"
    }
    $rida = [PSCustomObject]@{Name = $isik.Name; School = $klass} #loome ajutise objekti
    $nimiKlass += $rida #lisame objekti uude tabelisse
}

$nimiKlass