# Rack::Showme

Rack middleware that injects a message into HTML responses.

> By _message_ I mean a div element

This give us the ability to, for example, add a message indicating that the server is staging or any other QA environment without have to modify our code base

## Using with Rails

Add the following line to your Gemfile

```ruby
	gem "rack-showme"
```

And run `bundle install`

Then add the following lines to an enviroment file e.g. `config/environments/development.rb`

```ruby
  require "rack/showme

  config.middleware.use "Rack::Showme"
  Rack::Showme::Options.message = "Development"
```

## Options

You can select between three colorschemes `yellow`, `green` and `red`

```ruby
  Rack::Showme::Options.colorscheme= "yellow"
  Rack::Showme::Options.colorscheme= "green"
  Rack::Showme::Options.colorscheme= "red"
```

This is useful to easily distinguish between diferent enviroments e.g. development and staging

## Information

### Bugs repors

If you discover a problem with **Rack::Showme**, please, open a Issue and include the more info you can.

### Contributing

Do you have an idea about how do **Rack::Showme** better, don't hesitate in fork the project and send a pull request

## ScreenShots

Simple rails app without **Rack::Showme**

![Screenshot](doc/images/normal.png)

Default colorscheme (yellow)

![Screenshot](doc/images/default.png)

Green colorscheme

![Screenshot](doc/images/green.png)

Red colorscheme

![Screenshot](doc/images/red.png)

