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

if !!node['nginx_proxy']['terminate_ssl']
  ssl_terminate_path = node['nginx_proxy']['conf_dir'] + "/ssl_terminate.conf"
  template ssl_terminate_path do
    source "ssl_terminate.conf.erb"
  end
end

service "nginx" do
  action [:restart]
end
