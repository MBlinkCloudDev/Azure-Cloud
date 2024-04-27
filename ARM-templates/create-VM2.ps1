#Connect-AzAccount

$rg = 'rg-manuel.blinkert.test34567121'
$lc = 'germanywestcentral'
#$lc = 'northeurope'

New-AzResourceGroup -Name $rg -Location $lc -Force

New-AzResourceGroupDeployment `
    -Name 'deployment-template-name01' `
    -ResourceGroupName $rg `
    -TemplateFile '02-windows-vm.json' `
    -adminUsername 'us3r' `
    -storageAccountType 'Standard_LRS' `
    -location $lc