# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name        = "mocha-rice"
  s.summary     = "JS/CoffeeScript unit testing for Rails 3.1+ using Mocha"
  s.description = "Full support for the Rails 3.1+ asset pipeline when bdd'ing your JavaScript using Mocha"
  s.files       = `git ls-files`.split "\n"
  s.authors     = ["Andrew Hanna"]
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.add_dependency( 'haml' )
  s.add_dependency( 'coffee-rails' )
  s.add_dependency( 'npm_assets' )
end
