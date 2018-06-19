# # encoding: utf-8

# Inspec test for recipe gm_dev_server::dev_tools

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('ant') do
  it { should be_installed }
end

describe package('net-tools') do
  it { should be_installed }
end
