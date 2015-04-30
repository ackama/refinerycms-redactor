begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RefineryRedactor'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

ENGINE_PATH = File.dirname(__FILE__)
APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)

if File.exists?(APP_RAKEFILE)
    load 'rails/tasks/engine.rake'
end

require "refinerycms-testing"
Refinery::Testing::Railtie.load_dummy_tasks(ENGINE_PATH)





Bundler::GemHelper.install_tasks


task default: :spec
