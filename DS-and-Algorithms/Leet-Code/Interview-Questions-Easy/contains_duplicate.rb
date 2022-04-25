def contains_duplicate(nums)
  nums.uniq.length != nums.length ? true : false
end