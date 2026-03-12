# Restart services that are stopped
Get-Service | Where-Object {$_.Status -eq "Stopped"} | ForEach-Object {
    Write-Host "Restarting service:" $_.Name
    Start-Service $_.Name
}
