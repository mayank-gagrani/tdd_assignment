require 'rails_helper'

RSpec.describe TddCalculator do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = TddCalculator.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end

   end
end
