# Filter critical errors in system event log in last 7 days
$events = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=(Get-Date).AddDays(-7)}
Write-Host "Critical events in last 7 days:"
$events | Select-Object TimeCreated, ProviderName, Id, Message | Format-Table -AutoSize
