require 'checkout'

describe Shop do
  describe '#checkout' do
    it 'returns -1 when recieves a lower case letter' do
      expect(subject.checkout).to eq -1
    end
  end 
end
