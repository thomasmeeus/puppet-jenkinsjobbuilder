require 'spec_helper_acceptance'

describe 'jenkinsjobbuilder::install' do

  describe 'running puppet code' do
    it 'should work with no errors' do
      pp = <<-EOS

        include 'yum'
        include 'profile::package_management'
        include stdlib::stages 

        class { 'cegekarepos' : stage => 'setup_repo' }

        include jenkinsjobbuilder
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end

    describe package('jenkins-job-builder') do
      it { should be_installed.by('pip') }
    end
  end
end
