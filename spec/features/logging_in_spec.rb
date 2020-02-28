feature 'logging in' do
  scenario 'a user can log in ' do


    visit('/sign_up')
    fill_in('name', with: 'Meg')
    fill_in('email', with: 'test@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq '/spaces'

    click_button('Sign out')


    fill_in('email', with: 'test@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq '/spaces'
    expect(page).to have_content("Welcome, Meg")

    # extra include persons name grab from users database 
  end
end
