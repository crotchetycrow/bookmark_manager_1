describe Bookmarks do
  feature "delete a bookmark" do
    scenario "user will delete the selected bookmark from the database table" do
      visit '/'
      click_button 'List'
      first('.bookmark').click_button 'Delete'
      expect(page).not_to have_content("Makers Academy")
    end
  end
end

