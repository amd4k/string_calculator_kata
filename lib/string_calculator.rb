class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?

        parse_num(numbers).sum

    end

    private
    def parse_num(numbers)
        num_arr = numbers.split(',')
        num_arr.map(&:to_i)
    end
end