def array_add(array, target)
  result_array = []
  array.each_with_index do |item, index|
    array.each_with_index do |item2, index|
      result = item + item2
      if result == target
        result_array.push(item, item2)
        p result_array
        return
      end
    end
  end
end


array_add([2,7,11,15], 9)