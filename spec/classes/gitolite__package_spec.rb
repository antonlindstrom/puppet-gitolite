require 'spec_helper'

describe 'gitolite::package', :type => :class do

  describe 'packages' do
    describe 'should include packages' do
      it { should contain_package('gitolite').with_ensure('present') }
    end

    describe 'should _not_ include packages' do
      let(:params) { { :ensure => 'absent' } }
      it { should contain_package('gitolite').with_ensure('absent') }
    end
  end

end
