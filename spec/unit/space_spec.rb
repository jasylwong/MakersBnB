describe 'Space' do
    describe '.create' do
        it 'allow the user to add a new space' do
            space = Space.create('Space Mansion', 'Lovely space', '£50', 'host')
            expect(space.name).to include "Space Mansion"
            expect(space.description).to include "Lovely space"
            expect(space.price).to include "£50"
            expect(space.host).to include "host"

        end
    end

    describe '.all' do
        it 'shopes a list of all spaces' do
            spaces = Space.all
            expect(spaces).to include "space_1"
            expect(spaces).to include "space_mansion"
        end
    end
end