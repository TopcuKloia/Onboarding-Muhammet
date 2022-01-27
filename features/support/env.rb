require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'date'
require 'time'
require 'httparty'
require 'allure-cucumber'

include Capybara::DSL
include RSpec::Matchers

RSpec.configure { |config| config.include Capybara::DSL, type: :feature }

require_relative '../config/base_config'
require_relative '../utils/driver'

Capybara.configure do |config|
  config.default_selector = :css
  config.default_max_wait_time = 10
  config.default_driver = :selenium
  config.default_normalize_ws = true
  config.match=:first
end
