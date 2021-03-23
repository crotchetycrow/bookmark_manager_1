class Bookmarks
  attr_reader :bookmarks
  require 'pg'

  def self.all

    @bookmarks = []

    rs = self.check_env.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      @bookmarks << row['url']
    end
    return @bookmarks
  end

  def self.add(new_url)
    self.check_env.exec "INSERT INTO bookmarks (url) VALUES ('#{new_url}');"
  end

  private
  def self.check_env
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect :dbname => 'bookmark_manager_test'
    else
      PG.connect :dbname => 'bookmark_manager'
    end
  end
end
