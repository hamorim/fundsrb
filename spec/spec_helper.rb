require "bundler/setup"
require "fundsrb"

RSpec.configure do |config|
  config.color = true
	config.before(:all) do
		@client = Fundsrb::Client.new
	end
end
