class GmailPage
  def initialize
    @gmail_address_input_id="identifierId"
    @gmail_password_input_css="password"
  end
  def put_gmail_address(address)
    fill_in(@gmail_address_input_id, with: address).native.send_keys(:enter)
  end
  def put_gmail_password(password)
    fill_in(@gmail_password_input_css, with: password).native.send_keys(:enter)
  end
end

