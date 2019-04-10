require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.WhoAreYou.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.farflungfireowrks.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.WhoAreYou.com")
      expect(bookmarks).to include("http://www.farflungfireowrks.com")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: "http//testbookmark.com")

      expect(Bookmark.all).to include 'http//testbookmark.com'
    end
  end
end
