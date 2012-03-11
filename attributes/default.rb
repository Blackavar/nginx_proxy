case platform
when "debian","ubuntu"
  set[:nginx-proxy][:conf_dir]     = "/etc/nginx/conf.d"
end

default[:nginx-proxy][:listen_port]  = "80"
default[:nginx-proxy][:server_name]  = "www.example.com"
default[:nginx-proxy][:destination_url] = "ws1.example.com"
