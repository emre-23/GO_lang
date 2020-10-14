#Write-Host "Congratulations! Your first script executed successfully"
#Write-Host "Selam Emre"
#	Her gün çalışacak
#	Yedek dosyasına günlük yeni değişen varsa atılacak
#	5 gün öncesi ziplenecek
#	Windows job scheduler’a bu script’in run konfigurasyonu yapılacak .(Senin userin olmasın lütfen Network service user olamalı.)

# *** move the o bytes xls items to hrwebtestbackup folder***
#Copy-Item -Path C:\Users\yunus.gormus\Desktop\Hrwebapp\*.xls -Destination C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup
Get-ChildItem -Path "C:\Users\yunus.gormus\Desktop\Hrwebapp"  -Filter "*.xls" -Recurse | where { $_.Length -eq 0 } | foreach { Copy-item $_.FullName C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup}  
Write-Host "Move completed"


# *** Zip  the files older than 5 days ***
#Get-ChildItem -Path C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.xls | Compress-Archive -DestinationPath C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\zipped_files
$Files = Get-ChildItem -Path "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.xls" -File | Where {$_.CreationTime -gt (Get-Date).AddDays(-5)}
$Date = Get-Date -UFormat %m-%d-%Y
Compress-Archive -Path $Files.FullName -DestinationPath "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\ $Date.zip"
Remove-Item C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.xls

# *** To delete 0-byte files having a specific extension zip ***
#Get-ChildItem -Path "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup" -include *.xls -Recurse -Force | Where-Object { $_.PSIsContainer -eq $false -and $_.Length -eq 0 }  | remove-item


#Remove the files older than 20 days
Get-ChildItem "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.zip" -Recurse -File | Where CreationTime -lt  (Get-Date).AddDays(-20)  | Remove-Item -Force
#Remove-item -path "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.zip" -force
#Get-ChildItem –Path "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\*.zip" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-20))} | Remove-Item