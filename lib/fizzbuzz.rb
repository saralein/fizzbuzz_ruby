def fizzbuzz(numbers)
  numbers.each do |number|
    output = ''
    if (number % 3 == 0)
      output += 'fizz'
    end
    if (number % 5 == 0)
      output += 'buzz'
    end
    puts output == '' ? number : output
  end
end

def fizzbuzz_original(numbers)
  numbers.each do |number|
    if (number % 3 == 0 and number % 5 == 0)
      puts 'fizzbuzz'
    elsif(number % 3 == 0)
      puts 'fizz'
    elsif(number % 5 ==0)
      puts 'buzz'
    else
      puts number
    end
  end
end

number_range = (1...101).to_a
fizzbuzz(number_range)
