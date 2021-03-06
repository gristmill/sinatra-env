# Sinatra Env

A few methods for inquiring about the Sinatra/Rack environment a`la Rails.

```ruby
Sinatra.env
# => "production"

Sinatra.env.production?
# => true

Sinatra.env.development?
# => false
```

## Usage

app.rb

```ruby
require 'bundler/setup'
require 'sinatra'
require 'sinatra-env'

# ./database.yml
# production:
#   database: mysql://root@localhost/database_name
# development:
#   database: sqlite://db/database.sqlite
database = YAML.load_file("database.yml")[Sinatra.env]

get '/' do
  if Sinatra.env.development?
    # do something
  else
    # do something else
  end
end
```

## License

MIT license:

http://www.opensource.org/licenses/MIT
