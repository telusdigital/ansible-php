require 'spec_helper'

describe 'ansible-php::default' do

  describe package('php5-fpm') do
    it { should be_installed.by('apt') }
  end

  describe command('php -i') do
    its(:stdout) { should_not match /PHP Warning/ }
  end
end
