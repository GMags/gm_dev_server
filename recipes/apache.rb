#
# Cookbook:: gm_dev_server
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' 

service 'httpd' do
  action [:enable, :start]
end