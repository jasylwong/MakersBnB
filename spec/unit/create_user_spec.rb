describe 'User' do
  describe '.create' do
    it "should create a user" do
      user = User.create(name: 'Dafna', email: 'dafnaisawesome@mail.com', password: '1234')
      
      expect(user).to be_a User
      expect(user.email).to eq 'dafnaisawesome@mail.com'
    end
  end

  describe '.find' do 
    it 'Should find the users Email and Password' do 
      user1 = User.create(name: 'Dafna', email: 'dafnaisawesome@mail.com', password: '1234')
      user = User.find_by(email: 'dafnaisawesome@mail.com', password: '1234')
      expect(user.email).to eq 'dafnaisawesome@mail.com'
      expect(user.password).to eq "1234"
      # expect(user.password).to eq "1234"
    end
  end



end