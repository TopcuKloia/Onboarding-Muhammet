helper=Helper.new

And(/^Maximize window$/) do
  page.windows[0].maximize
end

Then(/^Change to last window$/) do
  helper.switch_to_last_window
end

And(/^Change to first window$/) do
  helper.switch_to_first_window
  sleep 10
end

Then(/^Open new window$/) do
  helper.open_new_tab
end
