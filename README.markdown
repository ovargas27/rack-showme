# Rack-Showme 

Rack middleware that injects a message into HTML responses.

## Using with Rails

Add the following line to your Gemfile

```ruby
	gem "rack-showme"
```

Maybe you want to use it only for some enviroments.

Then add the following lines to your enviroment file e.g. `config/environments/development.rb`


```ruby
  require "rack/showme
  config.middleware.use "Rack::Showme"
  Rack::Showme::Options.message = "Development"
```

## ScreenShots

![Screenshot](doc/images/default.png)

