require_relative '../solver'

describe Solver do
  context 'Testing the Solver class' do
    solver = Solver.new
    it 'Factorial of 0 returns 1' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'Ask for positive number if negative number is given' do
      expect(solver.factorial(-1)).to eq('Please enter positive number')
    end

    it 'Calculate factorial of positive number' do
      expect(solver.factorial(6)).to eq(720)
    end

    it 'Reverse strings' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('testing')).to eq('gnitset')
    end

    it 'Return "fizz" when a multiple of 3 but not 5 is given ' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'Returns "buzz" when a multiple of 5 but not 3 is given' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'Returns "fizzbuzz" when a multiple of 3 and 5 is passed' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'Fizzbuzz method returns a number that is not a multiple of 3 and 5 as a string' do
      expect(solver.fizzbuzz(1)).to eq('1')
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end