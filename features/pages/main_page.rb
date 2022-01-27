class MainPage
  def initialize
    @survey_close_btn = "[class='c-close-icon-svg']"
    @search_bar = "gh-search-input"
    @search_button = ".header-search-button"
    @account_button = ".plButton-label.v-ellipsis"
    @sign_in_button = ".c-button.c-button-secondary.c-button-sm.sign-in-btn"
    @flags = "[alt='%s']"
    @search_title= ".search-title"
    @menu_button="Menu"
    @dropdown_elements=".hamburger-menu-flyout-list-item"
  end

  def choose_flag(flag)
    find(@flags % flag).click
    end

    def close_survey
      find(@survey_close_btn).click
    end

    def verify_title(arg)
      expect(page).to have_title arg
    end

    def search_for(arg)
      fill_in @search_bar, with: arg
      find(@search_button).click
    end

    def verify_search(arg)
      page.should have_selector(@search_title, text: arg.downcase)
    end

    def go_to_login_page
      find(@account_button).click
      find(@sign_in_button).click
    end
    def click_menu_button
      click_button(@menu_button)
    end
    def choose_dropdown_element_by_text(arg)
      find(@dropdown_elements, text: arg).click
    end
  end

