feature 'creating spaces' do
  scenario 'a user can create a space' do
    visit('/sign_up')
    fill_in('name', with: 'Meg')
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq('/spaces')
    click_button('Create new space')
    expect(current_path).to eq('/spaces/new')

    fill_in('name', with: 'Cool Space')
    fill_in('description', with: 'This is a darn cool place')
    fill_in('price', with: 45)
    fill_in('available_from', with: "2020-03-01")
    fill_in('available_to', with: "2020-05-01")
    click_button('Submit')
    expect(current_path).to eq '/spaces'

    expect(page).to have_content("Cool Space")
    expect(page).to have_content("2020-03-01")
    expect(page).to have_content("2020-05-01")
  end
end   
