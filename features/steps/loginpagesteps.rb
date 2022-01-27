login_page=LoginPage.new

Then(/^Log in with Enter button$/) do
  login_page.login_with_enter
end
And(/^Fill login form with (.*) and (.*)$/) do |username, password|
  login_page.fill_login_form(username, password)
end

And(/^Verify successful login$/) do
  begin
    login_page.verify_login
    raise "Log-in verification failed"
  rescue
    page.evaluate_script('window.location.reload()')
  ensure
    login_page.verify_login
  end
end

And(/^Click on Gmail$/) do
  login_page.go_to_gmail
end
