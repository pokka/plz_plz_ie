plz_plz_ie
==========

Just a middleware,make for fun.Never use to production plz.

###USAGE
Gemfile
```
  gem 'plz_plz_ie'
```

Rails,in `application.rb`:
```
class Application < Rails::Application
  ...
  config.middleware.insert_before ActionDispatch::Static,PlzPlzIE::Middleware
  ...
end
```

###Sinatra & others:
```
require 'plz_plz_ie/plz_plz_ie'
use PlzPlzIE::Middleware
```

###THEN
Render http://pokka.github.io/plz_plz_ie/

####MIT
