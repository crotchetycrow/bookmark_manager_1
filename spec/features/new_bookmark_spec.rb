describe Bookmarks do
  feature "add new bookmark" do
    scenario "user will add the bookmark to the the database table" do
      visit '/'
      click_button 'List'
      fill_in 'url', with: "http://www.amazon.co.uk"
      click_button 'Add'
      expect(page).to have_content("http://www.amazon.co.uk")
    end
  end
end
