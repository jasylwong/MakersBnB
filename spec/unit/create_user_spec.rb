describe 'User' do
  describe '.create' do
    it "should create a user" do
      user = User.create(name: 'Dafna', email: 'dafnaisawesome@mail.com', password: '1234')
      
      expect(user).to be_a User
      expect(user.email).to eq 'dafnaisawesome@mail.com'
    end
  end
end