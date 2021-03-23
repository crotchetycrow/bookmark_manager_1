require 'bookmarks'

describe Bookmarks do
  it 'responds to bookmarks' do
    expect(subject.bookmarks).to eq(["Google", "BBC", "Reddit"])
  end

  it 'returns an array of bookmarks' do
    expect(subject).to respond_to :all
  end
end
