feature 'logging in' do
  scenario 'a user can log in ' do
    visit('/login')
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq '/'
    # extra include persons name grab from users database 
  end
end


