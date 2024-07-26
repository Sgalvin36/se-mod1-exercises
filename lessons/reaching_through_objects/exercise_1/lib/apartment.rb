class Apartment
  attr_reader :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def rented?
    @rented
  end

  def rent_out
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    @rooms.sort_by {|room| room.name }
  end
end