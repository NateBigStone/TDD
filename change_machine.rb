require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    while cents >= 25
      coins << 25
      cents -= 25
    end
    while cents >= 10
      coins << 10
      cents -= 10 
    end
    while cents >= 5
      coins << 5
      cents -= 5
    end
    while cents > 0
      coins << 1
      cents -= 1 
    end
    return coins
  end
end

RSpec.describe ChangeMachine do
  let (:change_machine) {ChangeMachine.new}
  describe '#change' do
    it 'should return and array of 1 penny if given 1 cent' do
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return an array of [1, 1] if given 2 cent' do
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return an array of [5,1] if give 6' do
      expect(change_machine.change(6)).to eq([5,1])
    end

    it 'should return an array of [10, 5, 1] if given 16' do 
      expect(change_machine.change(16)).to eq([10, 5, 1])
    end

    it 'should return an array of [25, 10, 5, 1] if given 41' do 
      expect(change_machine.change(41)).to eq([25, 10, 5, 1])
    end

    it 'should return an array of [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do 
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end