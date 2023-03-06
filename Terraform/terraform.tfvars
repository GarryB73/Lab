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
PDC_name = "testdc001" # hostname
PDC_IPv4 = "192.168.158.10"
PDC_cpu_num = 2
PDC_mem = 4096
#
# Common network params
#
netmask_IPv4 = "24"
def_gw_IPv4 = "192.168.158.2"
dns_server_IPv4 = "192.168.158.2"