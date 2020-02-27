describe 'Space' do
  describe '.create' do
    it 'allow the user to add a new space' do
      space = Space.create(name: 'Space Place', description: 'Lovely space', price: 40)
      expect(space).to be_a Space
      expect(space.name).to eq "Space Place"
      expect(space.description).to include "Lovely space"
      expect(space.price).to eq 40
    end
  end

  describe '.all' do
    it 'shows a list of all spaces' do
      space = Space.create(name: 'Space Mansion', description: 'Lovely space', price: 50)
      Space.create(name: 'Casa Bonita', description: 'Muy bonita', price: 35)
      spaces = Space.all
      expect(spaces.first).to be_a Space
      expect(spaces.first.name).to eq "Space Mansion"
    end
  end
end
