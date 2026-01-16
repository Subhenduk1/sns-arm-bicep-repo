param location string = 'AustraliaSoutheast'
param appServicePlanName string = 'sns-bicepAppServicePlan3'
param webAppName string = 'sns-bicepWebAppDemo3'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}