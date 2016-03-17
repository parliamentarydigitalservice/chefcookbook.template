#
# Cookbook Name:: core
# Recipe:: linux
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Note the interval here is in seconds.
Chef::Log.info 'Installing chef-client and set its interval ...'
node.override['chef_client']['interval'] = '1800'
node.override['chef_client']['config']['log_level'] = 'warn'
include_recipe 'chef-client'
