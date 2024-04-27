#Connect-AzAccount

$rg = 'rg-manuel.blinkert.test34567'
#New-AzResourceGroup -Name $rg -Location northeurope -Force
#New-AzResourceGroup -Name $rg -Location germanywestcentral -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage3462345' `
    -ResourceGroupName $rg `
    -TemplateFile '01-windows-vm.json' `
    -location 'germanywestcentral' `
    -networkInterfaceName 'vm-012germany882' `
    -enableAcceleratedNetworking 1 `
    -subnetName 'default' `
    -virtualNetworkName 'VM-012germany-vnet' `
    -addressPrefixes '10.0.0.0/16' `
    -publicIpAddressName 'VM-012germany-ip' `
    -publicIpAddressType 'Static' `
    -publicIpAddressSku 'Standard' `
    -pipDeleteOption 'Detach' `
    -virtualMachineName 'VM-012germany' `
    -virtualMachineComputerName 'VM-012germany' `
    -osDiskType 'Standard_LRS' `
    -osDiskDeleteOption 'Delete' `
    -virtualMachineSize 'Standard_D4s_v3' `
    -nicDeleteOption 'Detach' `
    -adminUsername 'us3r' `
    -patchMode 'AutomaticByOS' `
    -enableHotpatching 0