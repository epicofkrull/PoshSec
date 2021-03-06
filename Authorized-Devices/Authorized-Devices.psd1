@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = 'Authorized-Devices.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
GUID = 'd026637b-ddf4-46d0-baa5-08e93a11b682'

# Author of this module
Author = 'PoshSec'

# Copyright statement for this module
Copyright = 'BSD 3-Clause'

# Description of the functionality provided by this module
Description = 'PoshSec Authorized Devices Module'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Functions to export from this module
FunctionsToExport = '*'

# List of all modules packaged with this module.
ModuleList = @(@{ModuleName = 'Authorized-Devices'; ModuleVersion = '1.0.0.0'; GUID = 'd026637b-ddf4-46d0-baa5-08e93a11b682'})

# List of all files packaged with this module
FileList = 'Authorized-Devices.psd1', 'Authorized-Devices.psm1', 'Compare-SecDeviceInventory.ps1', 'Get-SecDeviceInventory.ps1', 'Get-SecConnectivity.ps1'

}

