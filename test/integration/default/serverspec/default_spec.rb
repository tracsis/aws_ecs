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

