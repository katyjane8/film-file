ENV["RACK_ENV"] = "test"

require "bundler"

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

require 'capybara/dsl'
DatabaseCleaner.strategy = :truncation

Capybara.app = FilmFile
Capybara.save_and_open_page_path = 'tmp/capybara'

RSpec.configure do |c|

  c.include Capybara::DSL

  c.before(:all) do
    DatabaseCleaner.start
  end

  c.after(:each) do
    DatabaseCleaner.clean
  end
end
