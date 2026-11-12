Write-Host "Starting Enterprise Endpoint Maintenence..." -ForegroundColor Cyan

# 1. Network: Flush DNS Cache (Fixes Stale IP routing)
Write-Host "'n[1/3] Flushing DNS Cache..." -ForegroundColor Yellow
Clear-DnsClientCache
Write-Host "DNS Flush complete." -ForegroundColor Green

#2. Storage: Clear User Temp Files (Frees up drive space)
Write-Host "'n[2/3] Clearing Temporary Files..." -ForegroundColor Yellow
$tempPath = $env:TEMP
# SilentlyContinue prevent yhe script from crashing on locked files currently in use
Remove-Item -Path "$tempPath\*" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Temp files cleared." -ForegroundColor Green

# 3. Hardware: Check Physical Disk Health (SMART Status)
Write-Host "`n[3/3] Checking Drive Health..." -ForegroundColor Yellow
Get-PhysicalDisk | Select-Object FriendlyName, HealthStatus, OperationalStatus | Format-Table

Write-Host "Maintenance Protocol Complete!" -ForegroundColor Cyan