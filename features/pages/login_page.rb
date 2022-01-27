class LoginPage
  def initialize
    @email_field_id="fld-e"
    @password_field_id="fld-p1"
    @sign_in_button_css="[type='submit']"
    @logged_in_button_css=".plButton-label.v-ellipsis"
    @gmail_button_css=".social-button.undefined"
  end

  def fill_login_form (arg1, arg2)
    fill_in @email_field_id, with: arg1
    fill_in(@password_field_id, with: arg2).native.send_keys(:enter)
  end
  def login_with_enter
    #find(@sign_in_button_css).native.send_keys(:enter)
    puts "Hello World!"
  end
  def verify_login
    #expect(page).to have_selector(@logged_in_button, text: /"^Hi, [.]*$"/, exact=false)
    expect(page).to have_selector(@logged_in_button_css, text: "Hi,", exact:false)
  end
  def go_to_gmail
    find(@gmail_button_css, disabled: :all).click
    #click_button("Sign In with Google")
  end

end
