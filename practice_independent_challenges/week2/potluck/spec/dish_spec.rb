require 'rspec'
require './lib/dish'

describe Dish do
  describe '#initialize' do
    it 'is a dish' do
        expect(dish).to be_a