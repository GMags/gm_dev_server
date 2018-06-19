# # encoding: utf-8

# Inspec test for recipe gm_dev_server::apache

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
end

describe service('httpd') do
  it { should be_running }
end
