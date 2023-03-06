# vsphere related params
vsphere_user = "administrator@vsphere.local"
vsphere_password = "Pa55word!"
vsphere_server = "192.168.158.200"
vsphere_dc_name = "Datacenter"
vsphere_dscluster = "vsanDatastore"
vsphere_compute_cluster = "Cluster"
vsphere_portgroup_name = "Guests"
vsphere_folder = "Terraform-VMs"
vsphere_template_name = "Win2020"

# Which Windows administrator password to set during vm customization
winadmin_password = "Pa55word"

# Firmware of template
firmware = "efi"

# Primary Domain Controller settings
PDC_name = "testdc001" # hostname
PDC_IP_v4 = "192.168.158.10"
PDC_cpu_num = 2
PDC_mem = 4096

# Common network params
netmask_v4 = "26"
def_gw_v4 = "192.168.158.2"
dns_server_v4 = "192.168.158.2"
