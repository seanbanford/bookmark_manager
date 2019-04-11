require 'pg'

feature 'Viewing Bookmarks' do
  scenario 'User wants to view saved bookmarks' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end


  scenario 'User can view the bookmarks' do
    Bookmark.create(url: "http://www.google.com", title: 'Google')
    Bookmark.create(url: "http://www.WhoAreYou.com", title: 'Who Are You')
    Bookmark.create(url: "http://www.farflungfireowrks.com", title: 'Far Flung Fireworks')

    visit('/bookmarks')

    expect(page).to have_link('Google', href: "http://www.google.com")
    expect(page).to have_link('Who Are You', href: "http://www.WhoAreYou.com")
    expect(page).to have_link('Far Flung Fireworks', href: "http://www.farflungfireowrks.com")
  end
end
