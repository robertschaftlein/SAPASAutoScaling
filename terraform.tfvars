#ResourceGroup to deploy resources related to autoscaling
rgname = "RG_SAP"
#Location to deploy resources related to autoscaling
location = "WestEurope"
#Storage account name to be used for autoscaling config
storageaccount = "sapautoscalestorage12"
#Automation account name to be used for autoscaling
automationaccount = "sapautoscale12"
#Name of the LogicApp to be used for logon group registration
logicapp-sapregister = "logicapp-sapregister12"
#SAP System ID for which autoscaling is configured. 
sapsid = "A4H"
#Email recepient to receive notifications related to autoscaling
alertrecepient = "robert.schaftlein@dxc.com;arno.westhuis@dxc.com;milan.kerni@dxc.com"
#Name of the Onprem data gateway to be used by logicapp SAP connector. This should already be installed and configured
odgname = "autoscaling"
#Resource group of the Onprem data gateway
odgresourcegroup = "RG_SAP"
#Location of the Onprem data gateway
odglocation = "WestEurope"
#Instance number of the SAP system to be configured for autoscaling
sapinstnacenr = 00
#SAP User to be used by logon group registration logic app
sapregisteruser = "demouser"
#SAP System Client number
sapclient = "001"
#SAP Message server host. This will be used to configure RFC connection to be used by logic app SAP connector
sapmshost = "10.0.0.5"
#SAP message server port. This will be used to configure RFC connection to be used by logic app SAP connector
sapmsport = "3600"
#SAP Logongroup. This will be used to configure RFC connection to be used by logic app SAP connector
saplogongroup = "PUBLIC"
#Config below will be populated within a table in Storage account. They can be modified later after deployment as well.
scalingconfig = {
     sap1 = {
CurrentAppCount = 1
MaxAppCount = 2
MinAppAcount = 1
SAPAppLoadBalancer = "app-lb"
SAPAppNamingPrefix = "sap-Lin-app"
SAPAppVmSize = "Standard_D2s_v3"
SAPCustomImageid = "/subscriptions/37747b46-8fab-45db-a2ba-2984926a1870/resourceGroups/RG_SAP/providers/Microsoft.Compute/images/sap-Lin-app01-image-20210201135657"
SAPDeleteTimeout = 10
SAPImageHostName = "sap-Lin-app0"
SAPInstanceNr = 00
SAPLogonGroups = "PUBLIC,TEST"
SAPRegion = "WestEurope"
SAPResourceGroup = "RG_SAP"
SAPServerGroups = "parallel_generators"
SAPShutdownTimeout = 10
SAPAvSet = "APP-AVSET"
SAPSubnet = "sap-subnet"
SAPVnet = "sap-vnet"
}
}
