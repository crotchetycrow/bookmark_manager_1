require 'spec_helper'

# feature 'displays hello world' do
#   scenario 'webpage has hello world on it' do
#     visit '/'
#     expect(page).to have_content('Hello World')
#   end
# end

feature 'display bookmarks' do
  scenario 'when you visit the page it display a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("Here is a list of your bookmarks")
    expect(page).to have_content(["Google", "BBC", "Reddit"])
  end
end
