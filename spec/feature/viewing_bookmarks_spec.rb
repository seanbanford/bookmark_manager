require 'pg'

feature 'Viewing Bookmarks' do
  scenario 'User wants to view saved bookmarks' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end


  scenario 'User can view the bookmarks' do
    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.WhoAreYou.com")
    Bookmark.create(url: "http://www.farflungfireowrks.com")

    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.WhoAreYou.com"
    expect(page).to have_content "http://www.farflungfireowrks.com"
  end
end
