require 'bundler/setup'

Bundler.setup

require 'objective_model'
require 'fakefs/safe'

RSpec.configure do |config|
  config.before :each do |example|
    FakeFS.activate! if example.metadata[:fakefs]
  end

  config.after :each do |example|
    FakeFS.deactivate! if example.metadata[:fakefs]
  end
end
