<# Custom Script for Windows #>
#Invoke-Webrequest too slow
#$source = "https://omssources.blob.core.windows.net/omssources/LFS_S3_6Q_setup.exe"
#$destination = "C:\Windows\Temp\LFS_S3_6Q_setup.exe"
#Invoke-WebRequest $source -OutFile $destination
#Invoke-Expression "$destination /S" 

Import-Module BitsTransfer
$source = "https://omssources.blob.core.windows.net/omssources/LFS_S3_6Q_setup.exe"
$destination = "C:\Windows\Temp\LFS_S3_6Q_setup.exe"
Start-BitsTransfer -Source $source -Destination $destination
Invoke-Expression "$destination /S" 
