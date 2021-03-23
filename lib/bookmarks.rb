class Bookmarks
  attr_reader :bookmarks
  require 'pg'

  def self.all
    @bookmarks = []
    con = PG.connect :dbname => 'bookmark_manager'

    rs = con.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      @bookmarks << row['url']
    end
    return @bookmarks
  end
end
