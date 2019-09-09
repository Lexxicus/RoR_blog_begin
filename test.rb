1.upto(100) do |i|
  n = i % 3
  m = i % 5
  if m == 0 && n == 0
    puts "#{i} FizzBuzz"
  elsif m == 0
    puts "#{i} Buzz"
  elsif n == 0
    puts "#{i} Fizz"
  else
    puts i
  end

end
