ENV['RACK_ENV'] ||= 'test'

require File.expand_path('../../app.rb', __FILE__)

require 'minitest/autorun'
require 'rack/test'

class MyTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello World!', last_response.body
  end
end
