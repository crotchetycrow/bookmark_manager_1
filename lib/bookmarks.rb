class Bookmarks
  attr_reader :bookmarks, :title, :url, :id
  require 'pg'

  def initialize(title, url, id)
    @title = title
    @url = url
    @id = id
  end

  def self.all

    @bookmarks = []

    rs = self.check_env.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      
      @bookmarks << Bookmarks.new(row['title'], row['url'], row['id'])
    end
    return @bookmarks
  end

  def self.add(new_url, title)
    self.check_env.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_url}', '#{title}');"
  end

  def self.delete(id)
    self.check_env.exec "DELETE FROM bookmarks WHERE id = '#{id}';"

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
