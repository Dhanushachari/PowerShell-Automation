# Monitor & restart critical Windows services
$services = "Spooler","wuauserv","WinRM"

foreach ($svc in $services){
    $status = Get-Service -Name $svc
    Write-Host "$($svc) status: $($status.Status)"
    if ($status.Status -ne 'Running'){
        Start-Service -Name $svc
        Write-Host "$($svc) restarted successfully."
    }
}
