ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara-webkit'
require 'faker'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false 
  config.infer_base_class_for_anonymous_controllers = false
  config.include Capybara::DSL
  config.order = "default"
  config.formatter =:progress #:progress #:documentation , :html, :textmate
end
