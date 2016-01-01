def bubble_sort (array)
	x = 0
	
	while x <= (array.length-1) 
		array.each_with_index do |i, index|
			if array[index + 1] && array[index] > array[index + 1]
				array[index], array[index+1] = array[index + 1], array[index]
			end
		end
		x += 1
	end
	
	puts array
	return array
end


bubble_sort([4,3,78,2,0,2])