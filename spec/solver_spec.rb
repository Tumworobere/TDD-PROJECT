# rubocop:disable Metrics/BlockLength

require_relative '../solver'

describe Solver do
  solver = Solver.new

  context 'Testing of the class Solver' do
    describe '1st factorial' do
      it 'returns 1 when 0 is passed' do
        expect(solver.factorial(0)).to eq(1)
      end

      it 'returns 1 when 1 is passed' do
        expect(solver.factorial(1)).to eq(1)
      end

      it 'returns 2 when 2 is passed' do
        expect(solver.factorial(2)).to eq(2)
      end

      it 'returns 720 when 6 is passed' do
        expect(solver.factorial(6)).to eq(720)
      end

      it 'raises an exception when a negative number is passed' do
        expect { solver.factorial(-1) }.to raise_error(ArgumentError)
        expect { solver.factorial(-10) }.to raise_error(ArgumentError)
      end
    end

    describe '2nd reverse' do
      it 'returns the reverse of the string passed' do
        expect(solver.reverse('hello')).to eq('olleh')
        expect(solver.reverse('abc')).to eq('cba')
        expect(solver.reverse('okay')).to eq('yako')
        expect(solver.reverse('tdd')).to eq('ddt')
      end

      it 'returns the same string when a palindrom is passed' do
        expect(solver.reverse('kayakracecarkayak')).to eq('kayakracecarkayak')
        expect(solver.reverse('radar')).to eq('radar')
      end
    end

    describe '3rd fizzbuzz' do
      it "returns 'fizz' when passed a multiple of 3" do
        expect(solver.fizzbuzz(3)).to eq('fizz')
        expect(solver.fizzbuzz(6)).to eq('fizz')
        expect(solver.fizzbuzz(99)).to eq('fizz')
      end

      it "returns 'buzz' when passed a multiple of 5" do
        expect(solver.fizzbuzz(5)).to eq('buzz')
        expect(solver.fizzbuzz(10)).to eq('buzz')
        expect(solver.fizzbuzz(95)).to eq('buzz')
      end

      it "returns 'fizzbuzz' when passed a multiple of 3 and 5" do
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
        expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
        expect(solver.fizzbuzz(105)).to eq('fizzbuzz')
      end
      it 'returns the number as a string when passed a number that is not a multiple of 3 or 5' do
        expect(solver.fizzbuzz(1)).to eq(1.to_s)
        expect(solver.fizzbuzz(2)).to eq(2.to_s)
        expect(solver.fizzbuzz(4)).to eq(4.to_s)
        expect(solver.fizzbuzz(7)).to eq(7.to_s)
        expect(solver.fizzbuzz(8)).to eq(8.to_s)
        expect(solver.fizzbuzz(364)).to eq(364.to_s)
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
