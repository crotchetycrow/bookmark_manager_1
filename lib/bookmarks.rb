class Bookmarks
  attr_reader :bookmarks, :title, :url
  require 'pg'

  def initialize(title, url)
    @title = title
    @url = url
    
  end

  def self.all

    @bookmarks = []

    rs = self.check_env.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      
      @bookmarks << Bookmarks.new(row['title'], row['url'])
    end
    return @bookmarks
  end

  def self.add(new_url, title)
    self.check_env.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{title}');"
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
