case platform
when "debian","ubuntu"
  set[:nginx-proxy][:conf_dir]     = "/etc/nginx/conf.d"
end
