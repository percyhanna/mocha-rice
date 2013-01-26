Mocha-Rice
==========

Thanks to Brad Phelan's work on mocha-rice, I'm using his gem as a starting
point to make a similar gem, but with Mocha instead. I know that mocha_rails
already exists, but I didn't like how the assets were part of the release.
Looking to improve on this by using npm_assets to load the Mocha dependencies
dynamically.

Installation
------------

This Gem was developed on Rails 3.2.11 so should probably work on 3.2.x, don't
know about 3.1.x.

```ruby
group :development, :test do
  gem "mocha-rice"
end
```

The engine is automatically mounted into your application in the development
and test environments. If you'd like to change that behavior, you can
change which groups the gem is included in via the gemfile.

Optionally, you can run the installer

```bash
rails g mocha-rice:install
```

This will add the required `spec.js.coffee` together with a sample spec and
fixture to help get you started.

It will also add a intializer `config/initializers/mocha-rice.rb` which
can be used for easy setup of mocha-rice's options

Usage
-----

### CoffeeScripts

Create a file `spec/javascripts/spec.js.coffee` with the following content:

    #=require_tree ./

In the case where you need access to all your application javascript assets then create the file `spec/javascripts/spec.js.coffee` with the following contents:

    #=require_tree ./
    #=require_tree ../../app/assets/javascripts

This pulls in all your specs from the `javascripts` directory into Mocha:

```bash
spec/javascripts/*_spec.js.coffee
spec/javascripts/*_spec.js
spec/javascripts/*_spec.js.erb
```

The Rails 3.1 asset pipeline using [Sprockets](https://github.com/sstephenson/sprockets)
and [Tilt](https://github.com/rtomayko/tilt) ensure conversion.

As well you can use the `#require` dependency mechanisms in your specs to
pull dependencies. Here's an example `spec/javascripts/foo_spec.js.coffee`:

```coffeescript
#= require foo
#= require bar

describe "Foo", ->
  it "it is not bar", ->
    v = new Foo()
    expect(v.bar()).toEqual(false)

describe "Bar", ->
  it "it is not foo", ->
    v = new Bar()
    expect(v.foo()).toEqual(false)
```

### Stylesheets

For including stylesheets in your specs, mocha-rice uses `spec/javascripts/spec.css`.
Use Sprockets directives to include the right css files:

```css
/*
 *= require application
 */
```

### Start server

Now start your server

```bash
rails s
```

Goto

```bash
http://localhost:3000/mocha
```

and there are your specs.

### Asset debugging

You can override your current environment's `config.assets.debug` configuration per request
by adding `?debug=false` or `?debug=true` to the mocha path, eg.

```bash
http://localhost:3000/mocha?debug=false
```

This will concatenate all your css and javascript into single file which can improve your
suite's loading speed significantly.

Author
------

* Andrew Hanna (andrew@burn37.com)

Thanks
------

Thanks to the original author of mocha-rice, which was used as a foundation for this gem.

* Brad Phelan (bradphelan@xtargets.com)
