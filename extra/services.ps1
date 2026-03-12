Write-Output "Desactivando servicios inseguros"

Stop-Service -Name "RemoteRegistry"
Set-Service -Name "RemoteRegistry" -StartupType Disabled

Write-Output "Servicio desactivado"