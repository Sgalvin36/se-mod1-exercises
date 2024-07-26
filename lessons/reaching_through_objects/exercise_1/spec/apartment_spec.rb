require 'rspec'
require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do
  it 'exists' do
    aptm = Apartment.new
    expect(aptm).to be_an_instance_of Apartment
  end

  it 'declares it can be rented' do
    aptm = Apartment.new
    expect(aptm.rented?).to eq false
  end

  it 'declares it is rented' do
    aptm = Apartment.new
    expect(aptm.rented?).to eq false
    aptm.rent_out
    expect(aptm.rented?).to eq true
  end

  it 'can have rooms' do
    aptm = Apartment.new
    room_1 = Room.new("bathroom")

    aptm.add_room(room_1)
    aptm.add_room(Room.new("laundry"))
    aptm.add_room(Room.new("kitchen"))
    aptm.add_room(Room.new("bedroom"))
    expect(aptm.rooms.count).to eq 4
    expect(aptm.rooms).to include Room
  end

  it 'sorts rooms alphabetically' do
    aptm = Apartment.new
    room_1 = Room.new("bathroom")

    aptm.add_room(room_1)
    aptm.add_room(Room.new("laundry"))
    aptm.add_room(Room.new("kitchen"))
    aptm.add_room(Room.new("bedroom"))
    expect(aptm.list_rooms_by_name_alphabetically).to eq ['bathroom', 'bedroom', 'kitchen', 'laundry']
  end
end