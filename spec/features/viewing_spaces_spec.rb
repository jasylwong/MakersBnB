feature 'viewing spaces' do
    scenario 'see spaces list' do
      visit('/spaces')
      expect(page).to have_content("Space Mansion")
    end
end