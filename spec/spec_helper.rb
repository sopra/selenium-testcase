#!env ruby

require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.yahoo.co.jp/'

caps = Selenium::WebDriver::Remote::Capabilities.ipad
caps[:device] = 'iPad Simulator'
caps[:browserName] = 'iPad'
caps[:deviceName] = 'iPad'
caps[:platfrom] = 'Mac'
caps[:version] = '7.1'
caps[:app] = 'safari'
caps[:timeout] = 120

Capybara.register_driver :remote_browser do |app|

    opts = {
        desired_capabilities: caps,
        browser: :remote,
        url: "http://localhost:4723/wd/hub/",
    }

    Capybara::Selenium::Driver.new(app, opts);
end

Capybara.default_driver = :remote_browser
Capybara.javascript_driver = :remote_browser
