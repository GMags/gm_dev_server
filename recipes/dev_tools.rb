#
# Cookbook:: gm_dev_server
# Recipe:: dev_tools
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%W{httpd ant net-tools git lsof wget vim-enhanced words which}.each do |pkg|
  package pkg do
    action :install
  end
end

bash "yum groupinstall Development tools" do
  user "root"
  group "root"
  code <<-EOC
      yum groupinstall "Development tools" -y
  EOC
  not_if "yum grouplist installed | grep 'Development tools'"
 end
  
execute 'yum-makecache' do
  command 'yum makecache'
  action :run
end