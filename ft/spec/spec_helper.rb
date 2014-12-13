require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  options = {
      :js_errors => false,
      :timeout => 30,
      :phantomjs_options => %w['--load-images=no', '--disk-cache=false', '--ignore-ssl-errors=true'],
      :window_size => [1920, 1280],
  }
  Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false
Capybara.default_wait_time = 20
Capybara.app_host = 'https://jinshuju.net/login'

if ENV('environment') == 'qa'
  Capybara.current_driver = :selenium
else
  Capybara.current_driver = :poltergeist
end
