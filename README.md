Sin
===

Sinatra project template.

Components
----------

- [Sinatra][sinatra]
- [HAML][haml]
- [Twitter Bootstrap][bootstrap]
- [Rack::Flash][rack-flash3]

Add new routes
--------------

**routes/example.rb**

```ruby
module Sin
  module Routes
    class Example < Base  # Inherits from Sin::Routes::Base
      get '/example'
        "example"
      end
    end
  end
end
```

**app.rb**

```ruby
module Sin
  class App < Sinatra::Base
    #...

    require_relative 'routes/example'

    use Routes::Example

    # ...
  end
end
```

[sinatra]: http://sinatrarb.com
[haml]: http://haml.info
[bootstrap]: http://getbootstrap.com
[rack-flash3]: https://github.com/nakajima/rack-flash
