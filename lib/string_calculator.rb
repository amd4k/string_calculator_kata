class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?

        parse_num(numbers).sum

    end

    private
    def parse_num(numbers)
        normalized_numbers = numbers.gsub("\n", ",")
        num_arr = normalized_numbers.split(',')
        p num_arr
        num_arr.map(&:to_i)
    end
end