class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        return custom_delimiter(numbers).sum if numbers.start_with?("//")
        parse_num(numbers).sum
    end

    private
    def parse_num(numbers)
        normalized_numbers = numbers.gsub("\n", ",")
        num_arr = normalized_numbers.split(',')
        num_arr.map(&:to_i)

    end

    def custom_delimiter(numbers) 
        header, body = numbers.split("\n", 2) if numbers.start_with?("//")
        delimiter = header[2] if header
        num_arr = body.split(/#{Regexp.escape(delimiter)}|,|\n/)
        num_arr.map(&:to_i)
    end

end