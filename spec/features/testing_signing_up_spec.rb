feature 'testing spaces' do
    scenario 'show a space' do
      visit('/spaces')
      expect(page).to have_content("space_1")
    end
end

