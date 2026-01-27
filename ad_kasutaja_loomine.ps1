#funktsioon mis muudab sõnas olevad täpitähed ümber vastavateks alternatiivseteks tähtedeks
function sobivadTahed {
  
  param([String] $sisendSone)
    $tolge = @{ #list tähtedest mida pon vaja muuta ja milleks muudetakse
    [char]'ä' = "a"
    [char]'ö' = "o"
    [char]'ü' = "u"
    [char]'õ' = "o"
    }
  
  $valjundSone = "" #tühi väljund sõne

  #sõnes käiakse iga täht üle ja vaadatakse kas on vaja seda muuta
  foreach ($sumbol in $sisendSumbol = $sisendSone.ToCharArray()) {
    if ($tolge[$sumbol] -cne $Null) {#kui tegemist on täpitähega
      $valjundSone += $tolge[$sumbol]
    } else {#kui täht ei ole täpitäht
      $valjundSone += $sumbol
    }
  }

  Write-Output $valjundSone
}

#"--------------------------------------------------"

#AD kasutajate faili asukoht
$fail = "C:\Users\Administrator\powershell\ad_kasutajad.csv"
#importime sisu
$kasutajad = Import-Csv $fail -Encoding Default -Delimiter ";"

#
foreach ($kasutaja in $kasutajad) {
  $taisnimi = $kasutaja.FirstName + "." + $kasutaja.LastName #ees- ja perenimi liidetakse kokku kasutajanimeks
  $nimiVaike = $taisnimi.ToLower() #tähed muudetakse väiketähtedeks
  $nimiSobiv = sobivadTahed($nimiVaike) #täpitähed muudetakse ümber
  $upNimi = $nimiSobiv + "@sv-kool.local" #UserPrincipal nimi
  $displayNimi = $kasutaja.FirstName + " " + $kasutaja.LastName #Display nimi
 
 $kasutajaKontroll = Get-ADUser -Filter "SamAccountName -eq '$nimiSobiv'" -ErrorAction SilentlyContinue
 if ($kasutajaKontroll) { #klui kasutaja on juba olemas
    Write-Host "Kasutaja loomine ebaõnnestus - kasutaja $nimiSobiv on juba loodud"
  } else { #sellist kasutajat ei ole veel olemas, uus kasutja luuakse
    New-ADUser -Name $nimiSobiv `
      -DisplayName $displayNimi `
      -GivenName $kasutaja.FirstName `
      -SurName $kasutaja.LastName `
      -Department $kasutaja.Department `
      -Title $kasutaja.Role `
      -UserPrincipalName $upNimi `
      -AccountPassword (ConvertTo-SecureString $kasutaja.Password -AsPlainText -Force) -Enabled $true

    if ($?) { #kontroll et viimane käsk toimis edukalt
        Write-Host "UUe kasutaja $nimiSobiv loomine õnnestus"
    }
  }
}

