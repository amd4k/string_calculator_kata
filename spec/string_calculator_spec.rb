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
  end
end