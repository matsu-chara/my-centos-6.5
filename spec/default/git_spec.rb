require 'spec_helper'

describe command('git --version') do
    it { should return_exit_status 0 }
    it { should return_stdout(/git version 2\.*\.*/) }
end
