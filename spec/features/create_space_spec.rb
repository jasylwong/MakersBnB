feature 'creating spaces' do
  scenario 'a user can create a space' do
    visit 'spaces/new'
    p "CHECK THIS LING"
    fill_in('name', with: 'Cool Space')
    fill_in('description', with: 'This is a darn cool place')
    fill_in('price', with: '45')
    click_button('Submit')
    expect(current_path).to eq '/spaces'
    expect(page).to have_content('Cool Space')
  end
end   
