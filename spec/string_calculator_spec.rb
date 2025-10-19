require 'spec_helper'
require_relative '../lib/string_calculator'
RSpec.describe StringCalculator do
  describe '#add' do
    let(:calculator) { StringCalculator.new }

    context 'when given an empty string' do
        it 'returns 0' do
           expect(calculator.add('')).to eq(0)
        end
    end

    context 'when a single number is provided' do
        it 'returns the number itself' do
           expect(calculator.add('1')).to eq(1)
        end
    end

    context 'when two numbers are provided' do
        it 'returns the sum of the two numbers' do
           expect(calculator.add('1,2')).to eq(3)
        end
    end

    context 'when multiple numbers are provided' do
        it 'returns the sum of all the numbers' do
           expect(calculator.add('1,2,3,4,5')).to eq(15)
        end
    end

    context 'when numbers are separated by newlines' do
        it 'returns the sum of all the numbers' do
           expect(calculator.add("1\n2,3")).to eq(6)
        end
    end

    context 'when custom delimiters are used' do
        it 'supports semicolon as a delimiter' do
            expect(calculator.add("//;\n1;2")).to eq(3)
        end

        it 'supports asterisk as a delimiter' do
            expect(calculator.add("//*\n1*2,5\n3,7,9*400,0*5")).to eq(432)
        end
    end

    context 'when negative numbers are provided' do
        it 'raises an error' do
            expect { calculator.add("1,-2,-3") }.to raise_error(ArgumentError, "negative numbers not allowed: -2, -3" )
        end

         it 'raises an error even if custom delimiter is used' do
            expect { calculator.add("//*\n1*2,-5\n3,7,9*400,-20*5") }.to raise_error(ArgumentError, "negative numbers not allowed: -5, -20" )
        end
    end

  end
end