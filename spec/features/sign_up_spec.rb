feature 'sign-up' do
    scenario '' do
        visit('/sign_up')
        expect(page).to have_content("Please enter you details")
    end
end
