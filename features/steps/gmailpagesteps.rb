gmail_page= GmailPage.new

And(/^Enter your email: (.*) and press enter$/) do |username|
  gmail_page.put_gmail_address(username)
end

Then(/^Enter your password: (.*) and press enter$/) do |password|
  gmail_page.put_gmail_password(password)
end