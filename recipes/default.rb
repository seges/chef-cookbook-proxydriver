proxydriver_deb = "#{Chef::Config['file_cache_path']}/proxydriver_1.61_all.deb"

remote_file proxydriver_deb do
  source "http://downloads.sourceforge.net/project/proxydriver/deb/proxydriver_1.61_all.deb?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fproxydriver%2Ffiles%2Fdeb%2F&ts=1407831149&use_mirror=cznic"
end

dpkg_package "proxydriver" do
  case node[:platform]
    when "debian","ubuntu"
            package_name "proxydriver"
            source proxydriver_deb
    end
    action :install
end

