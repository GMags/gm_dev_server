# # encoding: utf-8

# Inspec test for recipe gm_dev_server::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('ant') do
  it { should be_installed }
end

describe package('net-tools') do
  it { should be_installed }
end

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
end
