def merge_sort(array, sorted = [])
    return array if array.length < 2

    slicedArray = array.each_slice( (array.size/2.0).round ).to_a

    left = merge_sort(slicedArray[0])
    right = merge_sort(slicedArray[1])

    until left.empty? || right.empty?
        if left.first <= right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end


    sorted + left + right
end

p unsorted_array = [5,3,6,4,7,2,1,8]

puts "\n"

p merge_sort(unsorted_array)
