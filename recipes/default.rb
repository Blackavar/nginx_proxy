#
# Cookbook Name:: nginx_proxy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/nginx/conf.d/caching.conf" do
  source "caching.erb"
end

