# Time complexity is O(log(n))
# Space complexity is O(1)

def binary_search(numbers, target)
  low = 0
  high = numbers.length - 1
  while low <= high
    mid = (low + high) / 2
    if numbers[mid] == target
      return mid
    elsif numbers[mid] > target
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return -1
end

nums_lists = [[], [0,1], [1,2,3], [-1,0,3,5,9,12], [-1,0,3,5,9,12]]
target_list = [12, 1, 3, 9, 2]
for i in 0..nums_lists.length-1
	nums = nums_lists[i]
	target = target_list[i]
	index = binary_search(nums, target)
	if index != -1
		print(target.to_s + " exists in the array and its index is ", index.to_s)
	else
		print(target.to_s, " does not exist in the array so the return value is ", index.to_s)
	end
	print("\n----------------------------------------------------------------------------------------------------\n\n")
end

# Recursive
# Time complexity is O(log(n))
# Space complexity is O(log(n))

def binary_search(numbers, target)
  return -1 if numbers.length == 0
  mid = numbers.length / 2
  if numbers[mid] == target
    return mid
  elsif numbers[mid] > target
    return binary_search(numbers[0..mid-1], target)
  else
    return binary_search(numbers[mid+1..-1], target)
  end
end