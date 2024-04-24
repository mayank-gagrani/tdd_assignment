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

     it 'returns exception for negative numbers' do
        result = TddCalculator.add("1,-5,3,-4,-6")
        expect(result).to eq("negative numbers not allowed -5, -4, -6")
     end

     it 'returns 21 for an \n string' do
       result = TddCalculator.add('2\n4,6\n9')
       expect(result).to eq(21)
     end

     it 'returns invalid for an empty string' do
       result = TddCalculator.add('1,\n')
       expect(result).to eq('invalid')
     end

     it 'returns sum of number for string' do
       result = TddCalculator.add('//;\n1;2;5')
       expect(result).to eq(8)
     end

     it 'returns sum of and not include number >1000' do
       result = TddCalculator.add('2,1001')
       expect(result).to eq(2)
     end

     it 'returns sum for string contain *' do
       result = TddCalculator.add('/[***]\n1***2***7')
       expect(result).to eq(10)
     end

     it 'returns exception for negative numbers' do
       result = TddCalculator.add('1,-6\n,-3,\n')
       expect(result).to eq("negative numbers not allowed -6, -3")
     end

     it 'returns sum when string contain multiple delimiters' do
       result = TddCalculator.add('//[*][%]\n1*2%8')
       expect(result).to eq(11)
     end

   end
end
