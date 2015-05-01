module Refinery
  class RedactorGenerator < Rails::Generators::Base
    desc "Generates configuration file for Redactor to use in Refinery"
    source_root File.expand_path('../templates', __FILE__)


    def create_redactor_stubs
      say_status "Warning", "
        Due to licensing, refinery-redactor does not come
        with Redactor packaged. You need to purchase a license
        and download Redactor yourself. There are just two files
        you need: redactor.js and redactor.css. We have generated
        placeholder files for you in
        app/assets/javascripts/refinery-redactor
        and app/assets/stylesheets/refinery-redactor
        that currently alert you to Redactor not being present -
        simply replace those files with the respective files from
        your Redactor download.
      ", :red

      template "redactor.js", File.join(destination_root, 'app', 'assets', 'javascripts', 'refinery-redactor', 'redactor.js')
      template "redactor.css", File.join(destination_root, 'app', 'assets', 'stylesheets', 'refinery-redactor', 'redactor.css')
    end

    def create_config
      template "config.js", File.join(destination_root, 'app', 'assets', 'javascripts', 'refinery-redactor', 'config.js')
    end
  end
end

