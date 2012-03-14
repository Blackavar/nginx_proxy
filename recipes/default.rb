#
# Cookbook Name:: nginx_proxy
# Recipe:: default
#
# Copyright 2012, Michael Myers
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"

dest_path = node['nginx_proxy']['conf_dir'] + "/proxy.conf"
template dest_path do
  source "proxy.conf.erb"
end

service "nginx" do
  action [:restart]
end
