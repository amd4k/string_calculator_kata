require 'spec_helper'
require_relative '../lib/string_calculator'
RSpec.describe StringCalculator do
  describe '#add' do
    context 'when given an empty string' do
        it ' returns 0' do
           calculator = StringCalculator.new
           expect(calculator.add('')).to eq(0)
        end
    end

    context 'when a single number is provided' do
        it 'returns the nummber itself' do
           calculator = StringCalculator.new
           expect(calculator.add('1')).to eq(1)
        end
    end

    context 'when two numbers are provided' do
        it 'returns the sum of the two numbers' do
           calculator = StringCalculator.new
           expect(calculator.add('1,2')).to eq(3)
        end
    end

    context 'when multiple numbers are provided' do
        it 'returns the sum of all the numbers' do
           calculator = StringCalculator.new
           expect(calculator.add('1,2,3,4,5')).to eq(15)
        end
    end

    context 'when numbers are separated by new lines' do
        it 'returns the sum of all the numbers' do
           calculator = StringCalculator.new
           expect(calculator.add("1\n2,3")).to eq(6)
        end
    end

  end
end