require 'spec_helper'

describe 'ansible-php::default' do

  describe package('php5-fpm') do
    it { should be_installed.by('apt') }
  end
end
