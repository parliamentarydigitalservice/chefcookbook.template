#
# Cookbook Name:: core
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'core::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'includes the `chocolatey` recipe' do
    expect(chef_run).to include_recipe('chocolatey::default')
  end
end
