
Before do |scenario|
  puts "Start #{scenario}"
  Driver.get_driver
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  Capybara.current_session.driver.quit
end
