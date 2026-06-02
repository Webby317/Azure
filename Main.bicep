param location string = resourceGroup().location
param adminUsername string
param adminPassword string

module nsg 'nsg.bicep' = {
  name: 'vm-nsg'
  params: {}
}

module vm 'vm.bicep' = {
  name: 'vm-deploy'
  params: {
    adminUsername: adminUsername
    adminPassword: adminPassword
    nsgId: nsg.outputs.nsgId
  }
}
