$media_path = "C:\Software\SSMS\SSMS-Setup-ENU.exe"
$install_path = "$env:SystemDrive\SSMSto"
$params = "/Install /Quiet SSMSInstallRoot=`"$install_path`""

Start-Process -FilePath $media_path -ArgumentList $params -Wait