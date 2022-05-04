# Complexity
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    if hash[num]
      return [hash[num], index]
    else
      hash[target - num] = index
    end
  end
end


