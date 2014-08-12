default[:proxydriver][:enabled] = 'true'
default[:proxydriver][:proxy] = '10.10.10.10'
default[:proxydriver][:port] = '8080'
default[:proxydriver][:same] = 'true'

default[:proxydriver][:https_proxy] = 'proxy.domain.com'
default[:proxydriver][:https_port] = '8080'
default[:proxydriver][:ftp_proxy] = 'proxy.domain.com'
default[:proxydriver][:ftp_port] = '8080'
default[:proxydriver][:socks_proxy] = 'proxy.domain.com'
default[:proxydriver][:socks_port] = '8080'


default[:proxydriver][:auth] = 'false'
default[:proxydriver][:login] = 'admin'
default[:proxydriver][:pass] = 'pass'

default[:proxydriver][:ignorelist] = 'localhost,127.0.0.0/8,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12'

