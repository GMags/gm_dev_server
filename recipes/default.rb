#
# Cookbook:: gm_dev_server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cb = 'gm_dev_server'

# Add new user to serve

include_recipe "#{cb}::user"

# Install Java
include_recipe 'java::default'

# Install apache
include_recipe "#{cb}::apache"

# Install dev tools
include_recipe "#{cb}::dev_tools"