# vsphere related params
vsphere_user = "administrator@vsphere.local"
vsphere_password = "Pa55word!"
vsphere_server = "testvc001.vsphere.local"
vsphere_dc_name = "Datacenter"
vsphere_dscluster = "Cluster"
vsphere_compute_cluster = "Cluster"
vsphere_portgroup_name = "Guests"
vsphere_folder = "Test"
vsphere_template_name = "ws2022-Template"

# Which Windows administrator password to set during vm customization
winadmin_password = "Pa55word"

# Firmware of template
firmware = "efi"

# Primary Domain Controller settings
PDC_name = "testdc001" # hostname
PDC_IP = "192.168.158.10"
PDC_cpu_num = 2
PDC_mem = 4096

# Replica Domain Controller settings
ReplicaDC_name = "testdc002"
ReplicaDC_IP = "192.168.158.11"
ReplicaDC_cpu_num = 2
ReplicaDC_mem = 4096

# Microsoft File Server settings
FileServer_name = "testfil001"
FileServer_IP = "192.168.158.12"
FileServer_cpu_num = 2
FileServer_mem = 4096

# Microsoft Print Server settings
PrtServer_name = "testprt001"
PrtServer_IP = "192.168.158.13"
PrtServer_cpu_num = 2
PrtServer_mem = 4096

# Microsoft SQL Server settings
SQLServer_name = "testsql001"
SQLServer_IP = "192.168.158.14"
SQLServer_cpu_num = 2
SQLServer_mem = 4096

# Microsoft SharePoint Server settings
SPServer_name = "testsp001"
SPServer_IP = "192.168.158.15"
SPServer_cpu_num = 2
SPServer_mem = 4096

# Microsoft Exchange Server settings
ExcServer_name = "testexc001"
ExcServer_IP = "192.168.158.16"
ExcServer_cpu_num = 2
ExcServer_mem = 4096

# Common network params
netmask = "26"
def_gw = "192.168.158.2"
dns_server = "192.168.158.2"
