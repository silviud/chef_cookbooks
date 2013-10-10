require 'chefspec'

describe 'java/::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'java/::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
  it "logs the foo attribute" do
    chef_run = ChefSpec::ChefRunner.new
    chef_run.node.set['foo'] = 'bar'
    chef_run.converge 'java::default'
    expect(chef_run).to log 'The value of node.foo is: bar'
  end
end


