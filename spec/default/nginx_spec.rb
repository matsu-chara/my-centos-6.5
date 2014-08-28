require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe command('nginx -v') do
    it { should return_exit_status 0 }
    it { should return_stdout(/nginx version: nginx\/1\.2\.*/) }
end
