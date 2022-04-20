# Leet Code

def remove_duplicates(numbers)
  return 0 if numbers.empty?
  i = 0
  numbers.each_with_index do |num, index|
    if num != numbers[i]
      i += 1
      numbers[i] = num
    end
  end
  i + 1
end

def remove_duplicates(nums)
  return 0 if nums.empty?
  i = 0
  j = 1
  while j < nums.length
    if nums[i] == nums[j]
      j += 1
    else
      i += 1
      nums[i] = nums[j]
      j += 1
    end
  end
  i + 1
end

def remove_duplicates(numbers)
  return 0 if numbers.present?
  i = 0
  numbers.each_with_index do |number, index|
    if number != numbers[i]
      i += 1
      numbers[i] = number
    end
  end
end