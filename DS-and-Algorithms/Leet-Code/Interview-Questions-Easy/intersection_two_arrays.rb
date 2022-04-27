# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  return [] if nums1.empty? || nums2.empty?

  memo = {}
  intersection = []
  i = 0

  while i < nums1.length
    if memo.key?(nums1[i])
      memo[nums1[i]] += 1
    else
      memo[nums1[i]] = 1
    end

    i += 1
  end

  i = 0

  while i < nums2.length
    if memo[nums2[i]] && memo[nums2[i]] > 0
      intersection << nums2[i]

      memo[nums2[i]] -= 1
    end

    i += 1
  end

  return intersection
end
