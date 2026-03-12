# Basic network troubleshooting
$hosts = "8.8.8.8","8.8.4.4","www.microsoft.com"

foreach ($h in $hosts){
    if (Test-Connection $h -Count 2 -Quiet){
        Write-Host "$h is reachable"
    } else {
        Write-Host "$h is NOT reachable"
    }
}

# Show IP config
Get-NetIPConfiguration
