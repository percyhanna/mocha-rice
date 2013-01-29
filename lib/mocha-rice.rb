require "mocha-rice/engine"
require 'haml'
require "npm_assets"

module MochaRice
  # Determine whether or not to mount the MochaRice engine implicitly. True/False
  mattr_accessor :mount
  @@mount = true

  # Specify location at which to mount the engine, default to '/mocha'
  mattr_accessor :mount_at
  @@mount_at = '/mocha'

  #Specify the path for fixutures, defaults to 'spec/javascripts/fixtures'
  mattr_accessor :fixture_path
  @@fixture_path = 'spec/javascripts/fixtures'

  # Default way to setup MochaRice. Run rails generate mocha-rice:install to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end
end
