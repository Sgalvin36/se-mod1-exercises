require 'csv'
require 'pry'

class Name
  attr_reader :year, :bio_gender, :ethnicity, :name, :count, :rank
  @@filename = 'Popular_Baby_Names.csv'

  def initialize(data)
    @year = data[:year]
    @bio_gender = data[:bio_gender]
    @ethnicity = data[:ethnicity]
    @name = data[:name]
    @count = data[:count]
    @rank = data[:rank]
  end

  def self.find_by_name(name)
    rows = CSV.read(@@filename, headers: true)
    require 'pry';binding.pry
    results = []
    
    # new code goes here
    # results = rows.map do |row|
    #     Name.new(row)
    #   end
    # p results
  end
end

Name.find_by_name('Ian')