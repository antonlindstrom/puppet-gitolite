require 'spec_helper'

describe 'gitolite::user', :type => :class do

  describe 'user' do
    describe 'should include user' do
      it { should contain_user('git').with_ensure('present') }
    end

    describe 'should _not_ include user' do
      let(:params) { { :ensure => 'absent' } }
      it { should contain_user('git').with_ensure('absent') }
    end
  end

end
