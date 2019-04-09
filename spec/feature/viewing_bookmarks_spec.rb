feature 'Viewing Bookmarks' do
  scenario 'User wants to view saved bookmarks' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end


  scenario 'User wants to view a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.bbc.com"
    expect(page).to have_content "http://www.spotify.com"
    expect(page).to have_content "http://www.farflungfireowrks.com"
    expect(page).to have_content "http://www.whatsbehindthis.com"
  end
end
