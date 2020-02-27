feature 'logging out' do
  scenario 'a user can log out' do
    User.create(name: 'Jiminy cricket', email: 'good@conscience.com', password: 'pinocchio')
    visit('/sessions/new')
    expect(current_path).to eq('/sessions/new')
    fill_in('email', with: 'good@conscience.com')
    fill_in('password', with: 'pinocchio')
    click_button('Submit')
    click_button('Sign out')
    expect(page).to have_content('You have successfully signed out')    
  end
end
