#kasutajal palutakse sisestada kaks numbrit ning siis kuvatakse neist suurim

$number1 = Read-Host "Sisestage esimene number: " #esimese numbri muutuja
$number2 = Read-Host "Sisestage teine number: " #teise numbri muutuja

if($number1 -gt $number2) #võrreldakse kahte muutujat ning kuvatakse suurem number
{
Write-Host "Suurem number on: "$number1
}
else
{
Write-Host "Suurem number on: "$number2
}