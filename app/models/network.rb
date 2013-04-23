class Network < Nova
  attr_accessible :bridge, :bridge_interface, :broadcast, :cidr, :cidr_v6, :created_at, :deleted, :deleted_at, :dhcp_start, :dns1, :dns2, :gateway, :gateway_v6, :host, :injected, :label, :multi_host, :netmask, :netmask_v6, :priority, :project_id, :rxtx_base, :updated_at, :uuid, :vlan, :vpn_private_address, :vpn_public_address, :vpn_public_port
end
