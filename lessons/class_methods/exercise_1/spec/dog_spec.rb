require './lib/dog'

RSpec.describe Dog do

  it "can exist as an instance" do
    fluffy = Dog.new("Fluffy")
    fluffy_1 = Dog.new("Fluffy")
    fluffy_2 = Dog.new("Fluffy")

    puts Dog.woof
  end

  xit "can bark" do
    fluffy = Dog.new("Fluffy")
    expect(fluffy.bark).to eq("Fluffy goes Bark!")
  end

  xit "can woof" do
    fluffy = Dog.new("Fluffy")
    expect(fluffy.woof).to eq("Woof!")
  end

  xit "can always bark" do
    expect(Dog.woof).to eq("Self woof!")
  end

end