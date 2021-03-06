function Get-SecBrowserHelperObjects {
    New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR | Out-Null
    $Key = Get-RegistryProperties -Key "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects"
    $BHOs = $Key | Select PSChildName
    
    foreach ($bho in $BHOs) {
        $obj = New-Object PSObject
        Add-Member -InputObject $obj -MemberType NoteProperty -Name "CLSID" -Value $bho.PSChildName
        
        Push-Location
        Set-Location "HKCR:\CLSID"
        Add-Member -InputObject $obj -MemberType NoteProperty -Name "Name" -Value $(Get-Item -Path $bho.PSChildName | Get-ItemProperty | Select -ExpandProperty "(default)")
        Pop-Location
        
        $obj
    }
    
    Remove-PSDrive -Name HKCR | Out-Null
 }