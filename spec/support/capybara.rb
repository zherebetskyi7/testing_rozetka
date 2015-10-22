#Capybara::Screenshot::RSpec::REPORTERS["RSpec::Core::Formatters::HtmlFormatter"] = Capybara::Screenshot::RSpec::HtmlEmbedReporter

Capybara.register_driver( :selenium ){ |app| Capybara::Selenium::Driver.new( app, :browser => :chrome ) }

Capybara.configure do |config|
  config.default_selector  = :xpath
  config.javascript_driver = :selenium
  config.default_driver    = :selenium 
  config.app_host          = '//'
  config.default_max_wait_time = 3
end

	