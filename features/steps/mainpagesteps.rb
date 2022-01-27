main_page=MainPage.new

Given("Go to webpage {string}") do |arg|
  visit "#{arg}"
end
Then(/^Choose "([^"]*)"$/) do |arg|
  main_page.choose_flag(arg)
end

Then(/^Close survey$/) do
  main_page.close_survey
end

Then("Verify Page Title is {string}") do |arg|
  main_page.verify_title arg
end

Then(/^Search for "([^"]*)"$/) do |arg|
  main_page.search_for(arg)
end

And(/^Verify search results for "([^"]*)"$/) do |arg|
  main_page.verify_search arg
  sleep 3
end

Then(/^Go to sign\-in page$/) do
  main_page.go_to_login_page
end

Then(/^Click on Menu Button$/) do
  main_page.click_menu_button
end

And(/^Choose "([^"]*)" from dropdown menu$/) do |arg|
  main_page.choose_dropdown_element_by_text arg
end