require './lib/player'

RSpec.describe Player do 
  it "is instantiated with a name and position attribute" do 
    player = Player.new({name: "Lionel Messi", position: "Forward", height: 65})

    expect(player.name).to eq("Lionel Messi")
    expect(player.position).to eq("Forward")
  end

  it "can update the stats" do 
    player = Player.new({name: "Lionel Messi", position: "Forward", height: 65})

    expect(player.stats).to eq({})

    player.update_stats(:win)

    expect(player.stats).to eq({:win => 1})

    player.update_stats(:tie)

    expect(player.stats).to eq({:win => 1, :tie => 1})
  end
end