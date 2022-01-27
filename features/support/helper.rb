class Helper
  def switch_to_last_window
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  end
  def switch_to_first_window
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
  end
  def open_new_tab
    open_new_window
  end
end
