#
# Cookbook Name:: proxydriver
# Provider:: default
#

# Support whyrun
def whyrun_supported?
	true
end

action :create do
	description = "define #{new_resource.name} proxy driver config"
	converge_by(description) do

		attrs = %w(enabled autoconfig_url proxy port same https_proxy https_port ftp_proxy ftp_port socks_proxy socks_port auth login pass ignorelist)

		attrs.each do |attr|
			if not new_resource.instance_variable_get("@#{attr}")
				new_resource.instance_variable_set("@#{attr}", node[:proxydriver][attr])
			end
		end

		template "/etc/proxydriver.d/#{new_resource.name}.conf" do
			source "proxydriver.conf.erb"
			cookbook "proxydriver"
			variables new_resource.to_hash
			mode 0440
		end
	end
end


