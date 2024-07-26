require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20, 'Ali', 54321)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15, 20, 'Ali', 54321)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    it 'has a name and id number' do
      ceo = Ceo.new(15,20, 'Ali', 54321)
      expect(ceo.name).to eq 'Ali'
    end

    it 'has a total compensation package' do
      ceo = Ceo.new(15, 20, 'Ali', 54321)
      expect(ceo.total_compensation).to eq 35
    end
  end

end