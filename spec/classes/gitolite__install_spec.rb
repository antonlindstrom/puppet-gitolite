require 'spec_helper'

describe 'gitolite::install', :type => :class do
  let(:params) { { :key => 'key', :user => 'example' } }

  describe 'files' do
    describe 'should include /var/tmp/example.pub' do
      it do should contain_file('/var/tmp/example.pub').with(
        'ensure'  => 'present',
        'content' => 'key'
      ) end
    end
  end

  describe 'exec' do
    describe 'should include exec setup_key_key ' do
      it { should contain_exec('setup_key_example').with_creates('/home/git/.gitolite') }
    end
  end

end
