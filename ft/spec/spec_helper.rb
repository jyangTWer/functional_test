require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'site_prism'
require 'require_all'
require 'turnip'

require_all 'lib/pages'
require_all 'spec/steps'

Capybara.register_driver :poltergeist do |app|
  options = {
      :js_errors => false,
      :timeout => 30,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false', '--ignore-ssl-errors=true'],
      :window_size => [1920, 1280],
  }
  Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false
Capybara.default_wait_time = 20
Capybara.app_host = 'https://jinshuju.net'

Capybara.current_driver = :selenium
# Capybara.current_driver = :poltergeist

RSpec.configure do |config|
  config.include LoginSteps
end
