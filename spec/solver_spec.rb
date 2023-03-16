require './solver'

describe Solver do
    describe "#factorial" do
    it "returns the factorial of a positive integer" do
      expect(subject.factorial(5)).to eq(120)
    end

    it "returns 1 for 0" do
      expect(subject.factorial(0)).to eq(1)
    end

    it "raises an exception for negative integers" do
      expect { subject.factorial(-5) }.to raise_error(ArgumentError)
    end
  end
end
