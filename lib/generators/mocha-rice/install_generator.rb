require 'rails'
if ::Rails.version >= "3.1"
  module MochaRice::Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_files
        copy_file "mocha_rice.rb", "config/initializers/mocha_rice.rb"
        copy_file "spec.js", "spec/javascripts/spec.js.coffee"
        copy_file 'foo_spec.js.coffee', 'spec/javascripts/foo_spec.js.coffee'
        copy_file 'spec.css', 'spec/javascripts/spec.css'
        copy_file 'baz.html.haml', 'spec/javascripts/fixtures/baz.html.haml'
      end
    end
  end
end
