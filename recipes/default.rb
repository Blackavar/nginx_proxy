#
# Cookbook Name:: nginx_proxy
# Recipe:: default
#
# Copyright 2012, Michael Myers
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"

caching_path = node['nginx_proxy']['conf_dir'] + "/caching.conf"
template caching_path do
  source "caching.conf.erb"
end

service "nginx" do
  action [:restart]
end
