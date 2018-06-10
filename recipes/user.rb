#
# Cookbook:: gm_dev_server
# Recipe:: user
#
# Copyright:: 2018, The Authors, All Rights Reserved.

group node['gm_dev_server']['group'] do
  action :create
end

user node['gm_dev_server']['user'] do
    gid node['gm_dev_server']['group']
    shell '/bin/bash'
    home node['gm_dev_server']['user_home']
    action :create
end

directory '/home/gerry' do
  user node['gm_dev_server']['user'] 
  group node['gm_dev_server']['group'] 
  action :create
end

