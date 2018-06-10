#
# Cookbook:: gm_dev_server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cb = 'gm_dev_server'

# Add new user to serve

include_recipe "#{cb}::user"

# Install Java, Apache, Ant, Python
include_recipe 'java::default'

%W{httpd ant python3.6}.each do |pkg|
  package pkg do
    action :install
  end
end

service 'httpd' do
  action [:enable, :start]
end
