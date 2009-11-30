require 'test_helper'
require 'net/http'

class RouteTestControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "Default route must return HTTP 2XX" do
    uri = URI.parse( 'http://localhost:3000' )
    response = Net::HTTP.get_response( uri )
    assert  case response
              when Net::HTTPOK
                true
              else
                false
            end
  end
end
