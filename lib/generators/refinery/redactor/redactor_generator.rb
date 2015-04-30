module Refinery
  class RedactorGenerator < Rails::Generators::Base
    desc "Generates configuration file for Redactor to use in Refinery"
    source_root File.expand_path('../templates', __FILE__)

    def create_config
      template "config.js", File.join(destination_root, 'app', 'assets', 'javascripts', 'refinery-redactor', 'config.js')
    end
  end
end

