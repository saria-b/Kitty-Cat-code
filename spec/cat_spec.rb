require 'rspec'
require_relative "../models/cat"

describe Cat do
  describe '#new' do
    it 'initializes a new instance of Cat' do
      cat = Cat.new
      expect(cat).to be_instance_of Cat
    end
  end

  describe 'name' do
    it 'it returns cat name' do
      cat = Cat.new
      cat.name= 'Kitty'
      expect(cat.name).to eq('Kitty')
    end
  end

  describe 'hungry?' do
    it 'it says if cat is hungry?' do
      cat = Cat.new
      expect(cat.hungry?).to eq(true)
    end
  end

  describe 'feed' do
    it 'it feeds the cat' do
      cat = Cat.new
      cat.feed
      expect(cat.hungry?).to eq(false)
    end
    it 'it gets fluffier when fed' do
      cat = Cat.new
      current_fluff_level = cat.fluff_level
      cat.feed
      expect(cat.fluff_level).to eq(current_fluff_level + 1)
    end
  end

  describe 'haircut' do
    it 'it gives cat a haircut' do
      cat = Cat.new
      current_fluff_level = cat.fluff_level
      cat.haircut
      expect(cat.fluff_level).to eq(current_fluff_level - 3)
    end
  end


end
