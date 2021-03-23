require 'pg'

def set_up_test_database!

    p "Setting up test database..."

    con = PG.connect :dbname => 'bookmark_manager_test'

    con.exec("TRUNCATE bookmarks;")

    con.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com'), ('http://youtube.com'), ('http://www.google.com'), ('http://www.reddit.com');")
end
