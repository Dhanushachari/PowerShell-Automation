# Check CPU, RAM, and top 5 processes by CPU usage
Write-Host "CPU Usage:" (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
Write-Host "Available RAM:" (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1MB "MB"

Write-Host "Top 5 Processes by CPU Usage:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 | Format-Table -AutoSize
