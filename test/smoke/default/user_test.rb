# # encoding: utf-8

# Inspec test for recipe gm_dev_server::user

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user('gerry') do
  it { should exist }
end

describe directory('/home/gerry') do
  it { should exist }
end
