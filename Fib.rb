#productFib evaluates the product of two consecutive Fibonacci numbers and compares it
# to the
def productFib(prod)

  enn = 1
  evaluate = Fib(1)

  # while loop does the logic of evaluating if the product of
  # the two consecutive Fib numbers are less than, greater than, or equal to
  # prod, and keeps the sequence going if it is less than
  while enn < Float::INFINITY
    if evaluate[1] * evaluate[0] < prod
      evaluate = Fib(enn)
    elsif evaluate[1] * evaluate[0] == prod
      answer = evaluate.push(true)
      return answer
    else
      answer = evaluate.push(false)
      return answer
    end
    enn += 1
  end
end

#Fib returns fibonacci number in the [nth - 1, nth] position.
# Fib(1) = [0, 1], Fib(2) = [1, 1], Fib(3) = [1, 2]... and so on.
def Fib(enth_fib)

  eff_zero = 0
  eff_one = 1
  current_enth = 1
  answer = [eff_zero, eff_one]


  # logic that calculates a sequence of the 2 most recent Fibonacci numbers
  # in the walked sequence.

  if enth_fib == 1
    return answer
  else
    enth_fib.times do |number|
      if (enth_fib != current_enth) && enth_fib >= 1
        answer.push(answer[0] + answer[1])
        answer.shift
        current_enth += 1
        # puts answer[1]
      end
    end
    return answer
  end
end

# puts "answer is: " + productFib(8).to_s
