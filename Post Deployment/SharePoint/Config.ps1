Add-PSSnapin Microsoft.SharePoint.PowerShell

# General Variables
$SiteName = "Content Type Hub"
$SiteOwner = "test\sp_pool"
$SiteTemplate = "STS#0"

#Edit For Live Variables
$SiteCollURL = "http://shpt.test.co.uk/sites/contenttypes"
$SiteCollURL_SP = "http://shpt.test.co.uk/"
$SiteCollURL_One = "http://mysites.test.co.uk/"

#Create new Site Collection
New-SPSite -URL $SiteCollURL -OwnerAlias $SiteOwner -Template $SiteTemplate -Name $SiteName

#Activate Site Collection Features
Enable-SPFeature -URL $SiteCollURL -Identity ContentTypeHub
Enable-SPFeature -URL $SiteCollURL_SP -Identity ContentTypeHub
Enable-SPFeature -URL $SiteCollURL_One -Identity ContentTypeHub

#Configure Managed Metadata Service
Set-SPMetadataServiceApplication -Identity "Managed Metadata Service" -HubUri $SiteCollURL -SyndicationErrorReportEnabled
Set-SPMetadataServiceApplicationProxy -Identity "Managed Metadata Service" -ContentTypeSyndicationEnabled

#Refresh Jobs
Start-SPTimerJob MetadataHubTimerJob
Get-SPTimerJob MetadataSubscriberTimerJob -WebApplication $SiteCollURL_SP | Start-SPTimerJob
Get-SPTimerJob MetadataSubscriberTimerJob -WebApplication $SiteCollURL_ONE | Start-SPTimerJob