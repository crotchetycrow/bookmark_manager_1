require 'pg'

def set_up_test_database!

    p "Setting up test database..."

    con = PG.connect :dbname => 'bookmark_manager_test'

    con.exec("TRUNCATE bookmarks;")

    con.exec("INSERT INTO bookmarks(url, title) VALUES ('http://www.makersacademy.com', 'Makers Academy'), ('http://youtube.com', 'Youtube'), ('http://www.google.com', 'Google'), ('http://www.reddit.com', 'Reddit');")

end
