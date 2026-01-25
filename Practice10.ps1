#program kuvab ekraanile, et Notepad on avatud niikaua kuni koik Notepad
#aknad on suletud, siis kuvatakse ekraanile number,  mitu korda seda teksti
#ekraanile kuvati

$luger = 0 #loeb mitu korda teksti kuvati
do {
  $notepad = $null
  $notepad = Get-Process | ?{$_.name -like "note*"} #uurib kas notepad on avatud, kui muutuja on tyhi siis ei ole
  if($notepad -ne $null) { #kui notepad on avatud
    $avatud = 1 #notepad on avatud
    Write-Host "Notepad is running"
    Start-Sleep -Seconds 1
    $luger++
  }
  else {
    $avatud = 0 #notepad ei ole avatud
  }
}
until($avatud -eq 0) #kui muutuja on 0 siis tsykkel katkeb

$luger