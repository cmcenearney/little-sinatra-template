# test_helper.rb
ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require "minitest/reporters"
require 'rack/test'
require File.expand_path '../../app.rb', __FILE__

MiniTest::Reporters.use!

class TestBase < MiniTest::Test
	include Rack::Test::Methods
	def app
    Sinatra::Application
  end
end

