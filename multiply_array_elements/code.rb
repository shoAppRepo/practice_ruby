def multiply_array_elements(array)
  result =  array.max(2)
  multiplied_result = result.inject(:*)

  minus_result = array.min(2)
  multiplied_minus_result = minus_result.inject(:*)

  is_minus = multiplied_minus_result >= multiplied_result ? true : false

  if is_minus
    p "#{multiplied_minus_result} # (#{minus_result.join(' * ')})"
    return
  end

  p "#{multiplied_result} # (#{result.join(' * ')})"
end

multiply_array_elements([-10, -20, 5, 6])
