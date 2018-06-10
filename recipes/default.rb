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

# yum_repository 'ius-release' do
#   description "iuscommunity"
#   baseurl "https://centos7.iuscommunity.org/ius-release.rpm"
#   action [:create, :makecache]
# end

%W{httpd ant net-tools}.each do |pkg|
  package pkg do
    action :install
  end
end

service 'httpd' do
  action [:enable, :start]
end

execute 'yum-makecache' do
  command 'yum makecache'
  action :run
end
