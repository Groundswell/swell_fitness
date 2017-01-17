require 'acts-as-taggable-array-on'
require 'friendly_id'

module SwellFitness

	class << self
		
	end

	# this function maps the vars from your app into your engine
     def self.configure( &block )
        yield self
     end


	class Engine < ::Rails::Engine
		isolate_namespace SwellFitness


		config.generators do |g|
			g.test_framework :rspec
			g.fixture_replacement :factory_girl, :dir => 'spec/factories'
		end

	end
end
