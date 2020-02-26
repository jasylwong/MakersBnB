feature 'logging in' do
  scenario 'Login' do
    visit('/login')
      expect(page).to have_content("Login in below")
  end
end

feature 'enter details' do
  scenario 'user enters details' do
    visit('/login')
    expect(current_path).to eq '/login'
    expect(page).to have_content('Login in below')
    
    
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq '/'
    # extra include persons name grab from users database 
  end
end


