class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        
        parsed = if numbers.start_with?("//")
            custom_delimiter(numbers)
        else
            parse_num(numbers)
        end

        negatives = parsed.select { |num| num < 0 }
        unless negatives.empty?
            raise ArgumentError, "negative numbers not allowed: #{negatives.join(', ')}"
        end

        parsed.sum
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