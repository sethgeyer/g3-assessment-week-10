feature "homepage" do
  scenario "As a visitor, when I visit the home page, I can link to an 'about' page" do
    visit "/"
    click_on "About"
    expect(page).to have_css("#about")
  end

  scenario "As a visitor, when I visit the home page, I can link to create a new gifs" do
    visit "/"
    click_on "New gif"
    expect(page).to have_css("#new_gifs")
  end

end