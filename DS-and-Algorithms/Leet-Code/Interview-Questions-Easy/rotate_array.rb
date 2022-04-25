def rotate_array(nums, k)
  return nums if k == 0
  nums.rotate!(-k)
end
