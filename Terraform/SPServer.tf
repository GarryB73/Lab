#
# Set guest VM's parameters
#
resource "vsphere_virtual_machine" "SPServer" {
  name                 = "${var.SPServer_name}"
  num_cpus             = "${var.SPServer_cpu_num}"
  memory               = "${var.SPServer_mem}"
  datastore_id         = "${data.vsphere_datastore.datastore.id}"
  resource_pool_id     = "${data.vsphere_compute_cluster.cluster.resource_pool_id}"
  guest_id             = "${data.vsphere_virtual_machine.Win2022GUI_template.guest_id}"
  scsi_type            = "${data.vsphere_virtual_machine.Win2022GUI_template.scsi_type}"
  folder               = "${var.vsphere_folder}"
  firmware             = "${var.firmware}" 
#
# Set network parameters
#
  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
    adapter_type = "${data.vsphere_virtual_machine.Win2022GUI_template.network_interface_types[0]}"
  }
  #
  # Provision SharePoint OS boot disk
  #
  disk {
    label            = "disk0"
    size             = "${data.vsphere_virtual_machine.Win2022GUI_template.disks.0.size}"
    eagerly_scrub    = "${data.vsphere_virtual_machine.Win2022GUI_template.disks.0.eagerly_scrub}"
    thin_provisioned = "${data.vsphere_virtual_machine.Win2022GUI_template.disks.0.thin_provisioned}"
  }
  #
  # Provision SharePoint data drive
  #
  disk {
    label         = "disk1"
    unit_number   = 1
    size          = 5
  }
  #
  # Clone template and configure VM
  #
  clone {
    template_uuid = "${data.vsphere_virtual_machine.Win2022GUI_template.id}"

    customize {
      windows_options {
        computer_name    = "${var.SPServer_name}"
        admin_password   = "${var.winadmin_password}"
        auto_logon       = true
        auto_logon_count = 1
        
        # Run these commands after autologon. Configure WinRM access and disable windows firewall.
        run_once_command_list = [
          "winrm quickconfig -force",
          "winrm set winrm/config @{MaxEnvelopeSizekb=\"100000\"}",
          "winrm set winrm/config/Service @{AllowUnencrypted=\"true\"}",
          "winrm set winrm/config/Service/Auth @{Basic=\"true\"}",
          "netsh advfirewall set allprofiles state off",
        ]
      }

      network_interface {
        ipv4_address = "${var.SPServer_IPv4}"
        ipv4_netmask = "${var.subnet_mask_IPv4}"
        dns_server_list = ["${var.dns_server_IPv4}"]
        #ipv6_address    = "${var.SPServer_IPv6}"
        #ipv6_netmask    = "${var.subnet_prefix_IPv6}"
        #dns_server_list = ["${var.dns_server_IPv6}"]
      }

      ipv4_gateway = "${var.def_gw_IPv4}"
      #ipv6_gateway = "${var.def_gw_IPv6}"
    }
  }
}