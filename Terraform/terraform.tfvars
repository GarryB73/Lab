#
# vsphere related params
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
PDC_IPv6 = "fe80:0000:0000:75e0:a540:afd1:d3d3:0012"
PDC_cpu_num = 2
PDC_mem = 4096
#
# Microsoft SharePoint Server settings
#
SPServer_name = "testsp001"
SPServer_IPv6 = "fe80:0000:0000:75e0:a540:afd1:d3d3:0013"
SPServer_cpu_num = 2
SPServer_mem = 4096
#
# Microsoft SQL Server settings
#
SQLServer_name = "testsql001"
SQLServer_IPv6 = "fe80:0000:0000:75e0:a540:afd1:d3d3:0014"
SQLServer_cpu_num = 2
SQLServer_mem = 4096
#
# Microsoft Exchange Server settings
#
EXCServer_name = "testexc001"
EXCServer_IPv6 = "fe80:0000:0000:75e0:a540:afd1:d3d3:0015"
EXCServer_cpu_num = 2
EXCServer_mem = 4096
#
# Common IPv6 network parameters
#
subnet_prefix_IPv6 = "32"
def_gw_IPv6 = ""
dns_server_IPv6 = "::1"