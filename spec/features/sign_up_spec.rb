feature 'sign-up' do
    scenario '' do
        visit('/sign_up')
        expect(page).to have_content("Please enter your details")
    end
end
