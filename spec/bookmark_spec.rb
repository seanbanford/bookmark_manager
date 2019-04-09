require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns bookmarks' do

      bookmarks = Bookmark.all

      expect(bookmarks).to include ("http://www.spotify.com")
      expect(bookmarks).to include ("http://www.whatsbehindthis.com")
    end
  end
end
