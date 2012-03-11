#
# Cookbook Name:: nginx-proxy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nginx-proxy"

template "/etc/nginx/conf.d/caching.conf" do
  source "caching.erb"
  notifies :restart, "service[nginx]"
end

service "nginx" do
    action [:enable,:start]
end
