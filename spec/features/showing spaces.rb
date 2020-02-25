feature 'testing spaces' do
    scenario 'show a space' do
      visit('/spaces')
      expect(page).to have_content("space_1")
    end

    scenario 'adding a space' do
      visit('/spaces/new')
      fill_in('space_name', with: 'Space Mansion')
      fill_in('price', with: '£50')
      fill_in('description', with: 'Lovely space!')
      click_button('Submit')
      expect(page).to have_content('Space Mansion')
      expect(page).to have_content('£50')
      expect(page).to have_content('Lovely space!')
    end
end

