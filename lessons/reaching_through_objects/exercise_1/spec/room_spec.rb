require 'rspec'
require './lib/room'

RSpec.describe Room do
  it 'exists' do
    room = Room.new('Kitchen')
    expect(room).to be_an_instance_of Room
  end
  
  it 'has a name' do
    room = Room.new('Bathroom')

    expect(room.name).to eq "Bathroom"
  end
end