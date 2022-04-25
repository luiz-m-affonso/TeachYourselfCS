def binary_search_rotated(nums, target)
  return -1 if nums.empty?
  return 0 if nums.size == 1 && nums[0] == target
  left = 0
  right = nums.size - 1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] > nums[right]
      if nums[mid] > target && nums[left] <= target
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if nums[mid] < target && nums[right] >= target
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
  -1
end


# Recursive
def recursive_binary_search(nums, target, left, right)
  return -1 if nums.empty?
  return 0 if nums.size == 1 && nums[0] == target
  return -1 if left > right
  mid = (left + right) / 2
  if nums[mid] == target
    return mid
  elsif nums[mid] > nums[right]
    if nums[mid] > target && nums[left] <= target
      return recursive_binary_search(nums, target, left, mid - 1)
    else
      return recursive_binary_search(nums, target, mid + 1, right)
    end
  else
    if nums[mid] < target && nums[right] >= target
      return recursive_binary_search(nums, target, mid + 1, right)
    else
      return recursive_binary_search(nums, target, left, mid - 1)
    end
  end
end