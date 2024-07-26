require './lib/boat'

RSpec.describe Boat do
    it 'exists' do
        expect(Boat.new(:kayak, 20)).to be_a Boat
    end

    it 'has a boat type' do
        boat = Boat.new(:kayak, 20)
        expect(boat.type).to eq :kayak
    end

    it 'has a hourly rate' do
        boat = Boat.new(:kayak, 20)
        expect(boat.rate).to eq 20
    end

    it 'has a way to track hours rented' do
        boat = Boat.new(:kayak, 20)
        expect(boat.hours_rented).to eq 0
    end
end
