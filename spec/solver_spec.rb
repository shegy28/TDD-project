require './solver'

describe Solver do
  describe '#factorial' do
    it 'returns the factorial of a positive integer' do
      expect(subject.factorial(5)).to eq(120)
    end

    it 'returns 1 for 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative integers' do
      expect { subject.factorial(-5) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(subject.reverse('hello')).to eq('olleh')
      expect(subject.reverse('world')).to eq('dlrow')
      expect(subject.reverse('12345')).to eq('54321')
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when given a multiple of 3" do
      expect(subject.fizzbuzz(3)).to eq('fizz')
      expect(subject.fizzbuzz(6)).to eq('fizz')
    end

    it "returns 'buzz' when given a multiple of 5" do
      expect(subject.fizzbuzz(5)).to eq('buzz')
      expect(subject.fizzbuzz(10)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when given a multiple of 3 and 5" do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
      expect(subject.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the given number as a string in any other case' do
      expect(subject.fizzbuzz(7)).to eq('7')
      expect(subject.fizzbuzz(11)).to eq('11')
    end
  end
end
