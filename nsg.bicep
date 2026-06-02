resource nsg 'Microsoft.Network/networkSecurityGroups@2023-05-01' = {
  name: 'vm-nsg'
  location: resourceGroup().location
  properties: {
    securityRules: [
      {
        name: 'Allow-RDP'
        properties: {
          priority: 100
          direction: 'Inbound'
          access: 'Allow'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '3389'
          sourceAddressPrefix: 'YOUR-IP'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

output nsgId string = nsg.id
