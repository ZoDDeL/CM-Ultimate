

setlocal enabledelayedexpansion

powershell -Command "$sourcePath = Join-Path -Path $env:USERPROFILE -ChildPath 'AppData\LocalLow\AlfaBravoInc\Combat Master'; if(-not(Test-Path -Path $sourcePath)) { Write-Error 'Source folder not found'; exit 1 }; $date = Get-Date -Format 'yyyy-MM-dd'; $zipName = 'CombatMaster_' + $date + '.zip'; $destPath = Join-Path -Path (Split-Path -Path $sourcePath) -ChildPath $zipName; Compress-Archive -Path $sourcePath -DestinationPath $destPath -Force; if($?) { Write-Host 'ZIP-Archive succesfull created: ' $destPath }"

endlocal

pause