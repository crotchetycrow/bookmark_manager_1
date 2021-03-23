require 'bookmarks'

describe Bookmarks do
  it 'responds to bookmarks' do
    expect(Bookmarks.all).to include('http://www.google.com')
  end

  it 'returns an array of bookmarks' do
    expect(Bookmarks).to respond_to :all
  end
end
