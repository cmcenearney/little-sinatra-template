# test.rb
require_relative 'test_helper'

class MyTest < TestBase

  def test_hello_world
    get '/hello'
    assert last_response.ok?
    assert_equal "Hello from Sinatra-land!", last_response.body
  end

  def test_check
  	c = Check.new
  	assert_equal "Yep", c.check
  end


end