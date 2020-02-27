feature 'sign-up' do
  scenario 'shows sign up message' do
    visit('/sign_up')
      expect(page).to have_content("Sign up below")
  end
end

feature 'enter details' do
  scenario 'user enters details' do
    visit('/sign_up')
    fill_in('name', with: 'Meg')
    fill_in('email', with: 'email@meg.com')
    fill_in('password', with: '12345678')
    click_button('Submit')
    expect(current_path).to eq '/sessions/new'
     
  end

  # scenario 'user enters email already taken' do
  #   visit('/sign_up')
  #   fill_in('name', with: 'Meg')
  #   fill_in('email', with: 'email@meg.com')
  #   fill_in('password', with: '12345678')
  #   click_button('Submit')

  #   visit('/sign_up')
  #   fill_in('name', with: 'Imposter')
  #   fill_in('email', with: 'email@meg.com')
  #   fill_in('password', with: '12345678')
  #   click_button('Submit')
  #   expect(page).to have_content "This email has already been used."
  # end
end


