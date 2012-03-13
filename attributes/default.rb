case platform
when "debian","ubuntu"
  set['nginx_proxy']['conf_dir']     = "/etc/nginx/conf.d"
end

default['nginx_proxy']['listen_port']  = "80"
default['nginx_proxy']['ssl_port'] = "443"
default['nginx_proxy']['server_name']  = "www.example.com"
default['nginx_proxy']['destination_url'] = "http://127.0.0.1"
default['nginx_proxy']['terminate_ssl'] = false
default['nginx_proxy']['ssl_certificate'] = "/etc/ssl/certs/www.example.com.pem"
default['nginx_proxy']['ssl_certificate_key'] = "/etc/ssl/certs/www.example.com.key"
