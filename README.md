# ErrorHandler

The ErrorHandler generates customized exceptions.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'error_handler', git: 'git://github.com/Assokon/error_handler_gem.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install error_handler

## Usage

You can check params in functions for example

```ruby
def add(param1, param2)
  ::ErrorHandler.check_param(param: param1, clazz: Integer, caller: self)

  param1 + param2
end
```

or you throw customize Exceptions

```ruby
::ErrorHandler.call(message: "It will raise an exception", caller: self) if @error
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Assokon/error_handler_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

