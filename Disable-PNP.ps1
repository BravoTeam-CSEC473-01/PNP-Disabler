# Author: Ezana Kalekristos - eek9045@rit.edu
# Filename: Disable-PNP.ps1

# Get list of all PnPDevices and pipe them to the disable pnp device command
Get-PnPDevice | Disable-PnPDevice -Confirm:$false