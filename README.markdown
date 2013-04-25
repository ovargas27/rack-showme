# Rack-Showme 

Rack middleware that injects a message into HTML responses.

## Using with Rails

Add the following line to your Gemfile

```ruby
	gem "rack-showme"
```

Then add the following lines to your application.rb file

```ruby
  require "rack/showme
  config.middleware.use "Rack::Showme"
  Rack::Showme::Options.message = "Development"
```

