# Encoding: utf-8
require 'serverspec'

set :backend, :exec

describe 'ECS' do
   context 'Services' do
    it "has a running and enabled docker service" do
      expect(service(:docker)).to be_enabled
      expect(service(:docker)).to be_running
    end
  end
end

context 'Configuration' do
   describe file '/etc/ecs/ecs.config' do
      it { is_expected.to be_file }
      describe '#content' do
         subject { super().content }
         it { is_expected.to contain('ECS_DATADIR=/datadir') }
         it { is_expected.to contain('ECS_CLUSTER=test') }
         it { is_expected.to contain('ECS_LOGFILE=/log/ecs-agent.log')}
      end
   end
end
