#
# vsphere related parameters
#
vsphere_user = "administrator@vsphere.local"
vsphere_password = "Pa55word!"
vsphere_server = "192.168.158.200"
vsphere_dc_name = "Datacenter"
vsphere_dscluster = "vsanDatastore"
vsphere_compute_cluster = "Cluster"
vsphere_portgroup_name = "Guests"
vsphere_folder = "Terraform-VMs"
vsphere_template_name = "Win2020"
#
# Windows administrator password set during vm customization
#
winadmin_password = "Pa55word"
#
# Firmware of template
#
firmware = "efi"
#
# Primary Domain Controller settings
#
PDC_name = "testdc001"
PDC_IPv4 = "192.168.158.10"
PDC_IPv6 = "2000:100:0:100::a"
PDC_cpu_num = 2
PDC_mem = 4096
#
# Secondary Domain Controller settings
#
SDC_name = "testdc002"
SDC_IPv4 = "192.168.158.11"
SDC_IPv6 = "2000:100:0:100::b"
SDC_cpu_num = 2
SDC_mem = 4096
#
# Microsoft SQL Server settings
#
SQLServer1_name = "testsql001"
SQLServer1_IPv4 = "192.168.158.20"
SQLServer1_IPv6 = "2000:100:0:100::1a"
SQLServer1_cpu_num = 2
SQLServer1_mem = 4096
#
# Microsoft SQL Server settings
#
SQLServer2_name = "testsql002"
SQLServer2_IPv4 = "192.168.158.21"
SQLServer2_IPv6 = "2000:100:0:100::1b"
SQLServer2_cpu_num = 2
SQLServer2_mem = 4096
#
# Microsoft SharePoint Server settings
#
SPServer_name = "testsp001"
SPServer_IPv4 = "192.168.158.30"
SPServer_IPv6 = "2000:100:0:100::2a"
SPServer_cpu_num = 2
SPServer_mem = 4096
#
# Microsoft Exchange Server settings
#
EXCServer_name = "testexc001"
EXCServer_IPv4 = "192.168.158.40"
EXCServer_IPv6 = "2000:100:0:100::3a"
EXCServer_cpu_num = 2
EXCServer_mem = 4096
#
# Windows File Server settings
#
FILServer_name = "testfil001"
FILServer_IPv4 = "192.168.158.50"
FILServer_IPv6 = "2000:100:0:100::4a"
FILServer_cpu_num = 2
FILServer_mem = 4096
#
# Windows Print Server settings
#
PRTerver_name = "testwsus001"
PRTServer_IPv4 = "192.168.158.51"
PRTServer_IPv6 = "2000:100:0:100::4b"
PRTServer_cpu_num = 2
PRTServer_mem = 4096
#
# Microsoft Windows Update Server settings
#
WSUSServer_name = "testwsus001"
WSUSServer_IPv4 = "192.168.158.52"
WSUSServer_IPv6 = "2000:100:0:100::4c"
WSUSServer_cpu_num = 2
WSUSServer_mem = 4096
#
# Common IPv4 network parameters
#
subnet_mask_IPv4 = "24"
def_gw_IPv4 = "192.168.158.2"
dns_server_IPv4 = "192.168.158.2"
#
# Common IPv6 network parameters
#
subnet_prefix_IPv6 = "64"
def_gw_IPv6 = "2000:100:0:100::1"
dns_server_IPv6 = "::1"