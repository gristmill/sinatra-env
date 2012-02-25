require "sinatra-env/version"

module Sinatra
  def self.env
    Env::StringInquirer.new(ENV["RACK_ENV"] || "development")    
  end  

  module Env
    # Taken from Rails active_support/string_inquirer.rb
    class StringInquirer < String
      def method_missing(method_name, *arguments)
        if method_name[-1, 1] == "?"
          self == method_name[0..-2]
        else
          super
        end
      end
    end    
  end
end