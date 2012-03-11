case platform
when "debian","ubuntu"
  set['nginx_proxy']['conf_dir']     = "/etc/nginx/conf.d"
end

default['nginx_proxy']['listen_port']  = "80"
default['nginx_proxy']['server_name']  = "www.example.com"
default['nginx_proxy']['destination_url'] = "ws1.example.com"
