Write-Host "Valige riik:" -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Blue
Write-Host "2: Austraalia" -ForegroundColor Blue
Write-Host "3: Hiina" -ForegroundColor Blue
$riik = Read-Host "Valige üks riik"
if($riik -eq "1")
{
Write-Host "India pealinn on New Delhi" -ForegroundColor Green
}
elseif($riik -eq "2")
{
Write-Host "Austraalia pealinn on Canberra" -ForegroundColor Green
}
elseif($riik -eq "3") {
Write-Host "Hiina pealinn on Peking" -ForegroundColor Green
}
else
{
Write-Host "Wrong choice" -ForegroundColor Red
}