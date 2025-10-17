class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        
        num_arr = numbers.split(',')
        num_arr.map(&:to_i).sum
    end
end