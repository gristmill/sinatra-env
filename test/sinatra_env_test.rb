$:.unshift(File.join(File.dirname(__FILE__), "../lib"))

require "test/unit"
require "sinatra-env"

class SinatraEnvironment < Test::Unit::TestCase
  def test_sinatra_development_environment
    # default to development
    assert_equal "development", Sinatra.env
    assert Sinatra.env.development?
  end
  
  def test_sinatra_production_environment
    ENV["RACK_ENV"] = "production"
    assert_equal "production", Sinatra.env
    assert Sinatra.env.production?
    assert !Sinatra.env.development?
    assert !Sinatra.env.test?            
  end
end