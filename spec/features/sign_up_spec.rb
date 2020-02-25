feature 'sign-up' do
  scenario '' do
    visit('/sign_up')
      expect(page).to have_content("Please enter your details")
  end
end

feature 'enter details' do
  scenario 'user enters details' do
    visit('/sign_up')
    fill_in('name', with: 'Meg')
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(page).to have_content("Welcome, Meg")  
  end
end
