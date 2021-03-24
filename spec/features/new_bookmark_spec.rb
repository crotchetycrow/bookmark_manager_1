describe Bookmarks do
  feature "add new bookmark" do
    scenario "user will add the bookmark to the the database table" do
      visit '/'
      click_button 'List'
      fill_in 'url', with: "http://www.google.co.uk"
      fill_in 'title', with: "Google"
      click_button 'Add'
      expect(page).to have_content("Google")
    end
  end
end
