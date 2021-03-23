class Bookmarks
  attr_reader :bookmarks

  def initialize
    @bookmarks = ["Google", "BBC", "Reddit"]
  end

  def all
    @bookmarks
  end
end
