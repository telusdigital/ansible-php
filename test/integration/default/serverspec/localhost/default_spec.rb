require 'spec_helper'

describe 'ansible-php::default' do

  describe package('php5-fpm') do
    it { should be_installed.by('apt') }
  end

  describe service('php5-fpm') do
    it { should be_running }
  end

  describe command('php -i') do
    its(:stdout) { should_not match /PHP Warning/ }
  end

  describe 'PHP Config' do
    context php_config('display_errors') do
      its(:value) { should eq 'On' }
    end

    context php_config('max_execution_time') do
      its(:value) { should eq 30 }
    end

    context php_config('session.cookie_secure') do
      its(:value) { should eq 'Off' }
    end
  end
end
