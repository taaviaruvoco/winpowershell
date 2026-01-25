"========================================"
#Ülesanne1
# loome funktsiooni countstart, mis loeb kokku jooksvad teenused ja
# loome funktsiooni countstop, mis loeb kokku seisvad teenused
"Practice 14 ülesanne 1"

# funktsioon loeb kokku jooksvad teenused
function countstart {
    $jooksvadTeenused = Get-Service | Where-Object { $_.Status -eq 'Running' }
    $kogus = $jooksvadTeenused.Count
    Write-Output "Jooksvate teenuste arv: $kogus"
}

# funktsioon loeb kokku seisvad teenused
function countstop {
    $seisvadTeenused = Get-Service | Where-Object { $_.Status -eq 'Stopped' }
    $kogus = $seisvadTeenused.Count
    Write-Output "Seisvate teenuste arv: $kogus"
}

# funktsioonide kasutamine
countstart
countstop

"========================================"

#Ülesanne2
# loome funktsiooni countservice, mis võtab sisendiks ühe argumendi,
# vastavalt millele loetakse kokku jooksvad või seisvad teenused
"Practice 14 ülesanne 2"

function countservice {
    param (
        [string]$staatus  # kaasa antud argument
    )
    if($staatus -eq "Running") # kui tahetakse jooksvaid teenuseid
      {
        $jooksvadTeenused = Get-Service | ?{$_.Status -eq "Running"}
        $kogus = $jooksvadTeenused.Count
        Write-Host "Jooksvate teenuste arv: "$kogus
      }
    elseif($staatus -eq "Stopped") # kui tahetakse seisvaid teenuseid
      {
        $seisvadTeenused = Get-Service | ?{$_.Status -eq "Stopped"}
        $kogus = $seisvadTeenused.Count
        Write-Host "Seisvate teenuste arv: $kogus"
      }
}

# kutsume parameetriga jooksvad teenused
countservice -staatus "Running"

# kutsume parameetriga seisvad teenused
countservice -staatus "Stopped"

"========================================"