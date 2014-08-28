require 'spec_helper'

describe package('php') do
  it { should be_installed }
end

describe command('php -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/PHP 5\.5\.*/) }
end

describe 'PHP config parameters' do
  context  php_config('default_mimetype') do
    its(:value) { should eq 'text/html' }
  end

  context php_config('Configure Command') do
    its(:value) { should match(/--with-curl/) }
    its(:value) { should match(/--enable-mbstring/) }
  end
end

