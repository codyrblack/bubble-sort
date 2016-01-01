def bubble_sort_by (array)
	x = 0
	if block_given?
		while x <= (array.length-1) 
			array.each_with_index do |i, index|
				if array[index + 1] && yield(i, array[index+1]) > 0
					array[index], array[index+1] = array[index + 1], array[index]
				end
			end
			x += 1
		end
	end
	
	puts array
	return array
end

bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
    left.length - right.length
end