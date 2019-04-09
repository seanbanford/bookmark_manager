feature 'Viewing Bookmarks' do
  scenario 'User wants to view saved bookmarks' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
