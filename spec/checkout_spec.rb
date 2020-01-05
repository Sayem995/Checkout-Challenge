require 'checkout'

describe Shop do
  describe '#checkout' do
    it 'returns -1 when recieves a lower case letter' do
      expect(subject.checkout('aBc')).to eq -1
    end

    it 'returns -1 when recieves a number within string' do
      expect(subject.checkout('ABBC1')).to eq -1
    end

    it 'returns -1 when recieves an integer' do
      expect(subject.checkout(18)).to eq -1
    end

    context 'add to cost' do
      it '50 for every "A"' do
        expect(subject.checkout('A')).to eq 50
        expect(subject.checkout('AA')).to eq 100
      end
    end

  end
end
