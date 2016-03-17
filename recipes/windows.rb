#
# Cookbook Name:: core
# Recipe:: windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

Chef::Log.info 'Installing chocolatey ...'
include_recipe 'chocolatey'

# Note the interval here is in minutes.
Chef::Log.info 'Installing chef-client and set its interval ...'
node.override['chef_client']['interval'] = '2'
node.override['chef_client']['config']['log_level'] = 'warn'
include_recipe 'chef-client'
