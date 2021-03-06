require 'spec_helper'

describe 'administration::apache' do

  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :puppetversion => Puppet::PUPPETVERSION,
          :sudoversion   => '1.8.0',
        })
      end

      it { should compile.with_all_deps }
    end
  end
end
