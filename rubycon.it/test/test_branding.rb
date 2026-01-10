require 'minitest/autorun'
require 'net/http'
require 'uri'

class TestBranding < Minitest::Test
  def setup
    @base_url = "http://127.0.0.1:4002"
  end

  def test_homepage_is_red
    uri = URI.parse("#{@base_url}/assets/css/style.css")
    response = Net::HTTP.get_response(uri)
    
    assert_equal "200", response.code, "CSS file should be found"
    
    # Check for the dark red color used in the homepage gradient (hex or rgb)
    assert(response.body.include?("rgb(80, 0, 17)") || response.body.include?("#500011"), 
           "CSS should contain the dark red branding color (#500011 or rgb(80, 0, 17))")
    
    assert_includes response.body, "#dc2626", "CSS should contain the red-600 color for links"
  end

  def test_equity_page_has_prose
    uri = URI.parse("#{@base_url}/equity")
    response = Net::HTTP.get_response(uri)
    
    assert_equal "200", response.code, "Equity page should be found"
    assert_includes response.body, "class=\"prose", "Equity page should have the prose class applied"
  end
end
