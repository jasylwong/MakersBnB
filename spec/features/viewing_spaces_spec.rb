feature 'viewing spaces' do
    scenario 'see spaces list' do
      visit('/spaces')
      expect(page).to have_content("space_1")
    end
end