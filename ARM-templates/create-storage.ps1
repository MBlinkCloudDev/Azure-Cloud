$rg = 'rg-manuel.blinkert.test34'
New-AzResourceGroup -Name $rg -Location northeurope -Force
#New-AzResourceGroup -Name $rg -Location germanywestcentral -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage34567' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'storage01034875'