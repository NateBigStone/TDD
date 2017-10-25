require 'rspec'

class Fizzbuzz
  def output(number)
    return "FizzBuzz" if number % 15 == 0
    return "Buzz" if number % 5 == 0
    return "Fizz" if number % 3 == 0
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

#Fizzbuzz.new.go


RSpec.describe Fizzbuzz do
  describe '#output' do
    let (:fizzbuzz) {Fizzbuzz.new}
    it 'should return 1 if given 1' do
      expect(fizzbuzz.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      expect(fizzbuzz.output(2)).to eq(2)
    end
    it 'should return Fizz if given 3' do
      expect(fizzbuzz.output(3)).to eq("Fizz")
    end
  end
end