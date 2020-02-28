feature 'booking spaces' do
  scenario 'a user can book a space' do
    visit('/sign_up')
    fill_in('name', with: 'Meg')
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')

    click_button('Create new space')
    expect(current_path).to eq '/spaces/new'
    fill_in('name', with: 'Cool Space')
    fill_in('description', with: 'This is a darn cool place')
    fill_in('price', with: '45')
    fill_in('photo_url', with: "https://images.pexels.com/photos/374898/pexels-photo-374898.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
    click_button('Submit')

    click_button('Sign out')
    click_button('Homepage')

    click_link('Sign up')
    fill_in('name', with: 'Jack')
    fill_in('email', with: 'email@jack.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    
    click_button("Cool Space")
    expect(current_path).to eq '/bookings'
    expect(page).to have_content('Cool Space')
  end
end