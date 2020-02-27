feature 'viewing spaces' do
  scenario 'visitors can view spaces' do
    visit('/spaces/new')
    fill_in('name', with: 'Space Mansion')
    fill_in('price', with: '50')
    fill_in('description', with: 'Lovely space!')
    click_button('Submit')
    expect(page).to have_content('Space Mansion')
    expect(page).to have_content('50')
    expect(page).to have_content('Lovely space!')
  end
end
