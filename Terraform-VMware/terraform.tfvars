# vsphere related params
vsphere_user = "administrator@ajb1.local"
vsphere_password = "Password1234"
vsphere_server = "ajb52-vsphere01.ajb1.local"
vsphere_dc_name = "AJB52-Datacenter"
vsphere_dscluster = "DatastoreCluster"
vsphere_compute_cluster = "EsxiClust01"
vsphere_portgroup_name = "DPortGroup"
vsphere_folder = "Terraform-VMs"
vsphere_template_name = "ws2022-Template"

# Which Windows administrator password to set during vm customization
winadmin_password = "Password1234"

# Firmware of template
firmware = "efi"

# Primary Domain Controller settings
PDC_name = "AJB52-PDC" # hostname
PDC_IP = "10.175.128.180"
PDC_cpu_num = 3
PDC_mem = 6144

# Replica Domain Controller settings
ReplicaDC_name = "AJB52-DCR"
ReplicaDC_IP = "10.175.128.181"
ReplicaDC_cpu_num = 2
ReplicaDC_mem = 4096

# Fileserver settings
Fileserver_name = "AJB52-Files"
Fileserver_IP = "10.175.128.182"
Fileserver_cpu_num = 2
Fileserver_mem = 4096

# DHCP Server settings
DHCPServer_name = "AJB52-DHCP"
DHCPServer_IP = "10.175.128.183"
DHCPServer_cpu_num = 2
DHCPServer_mem = 4096

# Common network params
netmask = "26"
def_gw = "10.175.128.129"
dns_server = "10.175.128.180"
