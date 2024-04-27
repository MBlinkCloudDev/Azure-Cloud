rg='rg-manuel.blinkert.test34-cli'
az group create -n $rg --location germanywestcentral #westus

az group deployment create -g $rg --template-file '01-storage.json'