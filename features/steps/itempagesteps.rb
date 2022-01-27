item_page= ItemPage.new

Then(/^Click on nth item: "([^"]*)"$/) do |arg|
  item_page.click_on_nth_item arg
end

And(/^Search for Brand: "([^"]*)"$/) do |arg|
  item_page.search_for_brand arg
end

And(/^Save item$/) do
  item_page.save_element
end

Then(/^Open Saved Item Page$/) do
  item_page.open_saved_items
end

And(/^Verify the page is not empty$/) do
  item_page.verify_saved_list_is_not_empty
end
