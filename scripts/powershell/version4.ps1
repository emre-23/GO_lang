# move items to another folder
Get-ChildItem -Path "C:\Users\yunus.gormus\Desktop\Hrwebapp"  -Filter "*.xls" -Recurse | where { $_.Length -eq 0 } | foreach { Copy-item $_.FullName C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup}  
Write-Host "Move completed"
# move  the files older than 5 days
Get-Childitem -Path "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup" | Where-Object { $_.LastWriteTime -lt (get-date).AddDays(-5)} |
  ForEach {
    Move-Item $_.FullName -destination "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\zipped" -force -ErrorAction:SilentlyContinue
  }
# zip the files in this zipped folder

$compress = @{
    Date = Get-Date -UFormat %m-%d-%Y
    Path = "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\zipped"
    DestinationPath = "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\zipped\Date.zip"
    CompressionLevel = "Fastest"
 }
 Compress-Archive @compress -Verbose


#Get-ChildItem "C:\Users\yunus.gormus\Desktop\Hrwebapp_test_backup\zipped\*.zip" -Recurse -File | Where CreationTime -lt  (Get-Date).AddDays(-20)  | Remove-Item -Force