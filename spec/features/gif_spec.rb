feature "Creating and Viewing Gifs" do
  scenario "As a visitor, I can create a new gif and save it" do
    visit "/gifs/new"
    fill_in "URL", with: "http://www.lasertherapyfordogs.com/assets/images/autogen/a_dog_laser1.jpg"
    fill_in "Title", with: "Lazer Dog"
    click_on "Create gif"
    expect(page).to have_content("gif created successfully")
    expect(page).to have_content("Lazer Dog")
  end


  scenario "As a visitor, I can't create a new gif and save it without providing a URL" do
    visit "/gifs/new"
    fill_in "URL", with: ""
    fill_in "Title", with: "Lazer Dog"
    click_on "Create gif"
    expect(page).to have_css("#new_gifs")
    expect(page).to have_content("URL can't be blank")
  end

  scenario "As a visitor, I cant create a new gif and save it without prividing a title" do
    visit "/gifs/new"
    fill_in "URL", with: "http://www.lasertherapyfordogs.com/assets/images/autogen/a_dog_laser1.jpg"
    fill_in "Title", with: ""
    click_on "Create gif"
    expect(page).to have_css("#new_gifs")
    expect(page).to have_content("Title can't be blank")
  end


end