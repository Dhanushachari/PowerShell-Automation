Write-Host "Computer Name:" $env:COMPUTERNAME
Get-CimInstance Win32_OperatingSystem | Select Caption, Version, OSArchitecture
Get-CimInstance Win32_Processor | Select Name, NumberOfCores
Get-CimInstance Win32_PhysicalMemory | Select Capacity
