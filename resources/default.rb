actions :create
default_action :create

attribute :name, :kind_of => String, :name_attribute => true, :required => true
attribute :enabled, :kind_of => String, :default => 'true'
attribute :proxy, :kind_of => String, :default => '10.10.10.10'
attribute :port, :kind_of => String, :default => '8080'
attribute :same, :kind_of => String, :default => 'true'

attribute :https_proxy, :kind_of => String, :default => 'proxy.domain.com'
attribute :https_port, :kind_of => String, :default => '8080'
attribute :ftp_proxy, :kind_of => String, :default => 'proxy.domain.com'
attribute :ftp_port, :kind_of => String, :default => '8080'
attribute :socks_proxy, :kind_of => String, :default => 'proxy.domain.com'
attribute :socks_port, :kind_of => String, :default => '8080'


attribute :auth, :kind_of => String, :default => 'false'
attribute :login, :kind_of => String, :default => 'admin'
attribute :pass, :kind_of => String, :default => 'pass'

attribute :ignorelist, :kind_of => String, :default => 'localhost,127.0.0.0/8,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12'

attr_accessor :exists
