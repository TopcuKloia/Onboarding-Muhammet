class ItemPage
  def initialize
    @items_data_track="[data-track='[context:listRank=%s]'] a.image-link"
    @suggested_item_css="[aria-label='suggested brands']"
    @brand_search_box_id="brand_facet-search-bar-input"
    @save_for_later_button_class=".save-for-later-save"
    @saved_items_button_class=".savedItems-button"
    @item_in_saved_items_css="[data-t='rv-sku-card']"
  end
  def click_on_nth_item(number)
    find(@items_data_track % number).click
  end
  def search_for_brand(brand)
    fill_in(@brand_search_box_id, with: brand)
    find(@suggested_item_css).click
  end
  def save_element
    find(@save_for_later_button_class).click
  end
  def open_saved_items
    find(@saved_items_button_class).click
  end
  def verify_saved_list_is_not_empty
    expect(page).to have_selector(@item_in_saved_items_css)
  end
end
