#!/usr/bin/env rspec

require 'spec_helper'

describe 'jenkins-job-builder' do
  it { should contain_class 'jenkins-job-builder' }
end
