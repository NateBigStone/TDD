require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    [25, 10, 5, 1].each do |change|
      (coins << change; cents -= change) while cents >= change 
    end  
    coins
  end
end





RSpec.describe ChangeMachine do
  let (:change_machine) {ChangeMachine.new}
  describe '#change' do
    it 'should return and array of nothing if given 0 cent' do
      expect(change_machine.change(0)).to eq([])
    end

    it 'should return and array of 1 penny if given 1 cent' do
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return an array of [1, 1] if given 2 cent' do
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return an array of [1, 1, 1] if given 3 cent' do
      expect(change_machine.change(3)).to eq([1, 1, 1])
    end

    it 'should return an array of [5] if given 5 cent' do
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return an array of [5,1] if give 6' do
      expect(change_machine.change(6)).to eq([5,1])
    end

    it 'should return an array of [5, 1, 1] if given 7' do
      expect(change_machine.change(7)).to eq([5, 1, 1])
    end

    it 'should return an array of [5, 1, 1, 1] if given 8' do 
      expect(change_machine.change(8)).to eq([5, 1, 1, 1])
    end

    it 'should return an array of [5, 1, 1, 1, 1] if given 9' do 
      expect(change_machine.change(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return an array of [10] if you give 10 cents' do
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return an array of [10, 1] if you give 11 cents' do
      expect(change_machine.change(11)).to eq([10, 1])
    end

    it 'should return an array of [10, 1, 1] if you give 12 cents' do
      expect(change_machine.change(12)).to eq([10, 1, 1])
    end

    it 'should return an array of [10, 1, 1, 1] if you give 13 cents' do
      expect(change_machine.change(13)).to eq([10, 1, 1, 1])
    end

    it 'should return an array of [10, 1, 1, 1, 1] if you give 14 cents' do
      expect(change_machine.change(14)).to eq([10, 1, 1, 1, 1])
    end

    it 'should return an array of [10, 5] if you give 15 cents' do
      expect(change_machine.change(15)).to eq([10, 5])
    end

    it 'should return an array of [10, 5, 1] if given 16' do 
      expect(change_machine.change(16)).to eq([10, 5, 1])
    end

    it 'should return an array of [25] if given 25 cent' do
      expect(change_machine.change(25)).to eq([25])
    end

    it 'should return an array of [25, 10, 5, 1] if given 41' do 
      expect(change_machine.change(41)).to eq([25, 10, 5, 1])
    end

    it 'should return an array of [25, 25] if given 50' do 
      expect(change_machine.change(50)).to eq([25, 25])
    end

    it 'should return an array of [25, 25, 10 , 10, 1, 1] if given 72' do 
      expect(change_machine.change(72)).to eq([25, 25, 10 , 10, 1, 1])
    end

    it 'should return an array of [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do 
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end

    it 'should return an array of [25, 25, 25, 25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 194' do 
      expect(change_machine.change(194)).to eq([25, 25, 25, 25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end