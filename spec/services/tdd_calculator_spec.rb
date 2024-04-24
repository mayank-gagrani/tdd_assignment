require 'rails_helper'

RSpec.describe TddCalculator do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = TddCalculator.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end

     it 'returns sum for an string' do
       result = TddCalculator.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an empty string"
     end

     it 'returns sum for an string' do
       result = TddCalculator.add("0,5")
       expect(result).to eq(5)
     end

     it 'returns 9 for an string' do
       result = TddCalculator.add("2,1,6")
       expect(result).to eq(9)
     end

     it 'returns 13 for an empty string' do
       result = TddCalculator.add("1,5,2,5")
       expect(result).to eq(13)
     end
   end
end
