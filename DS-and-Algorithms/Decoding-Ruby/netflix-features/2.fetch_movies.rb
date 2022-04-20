require './linked-list.rb'

# Time complexity: O(n log k)
# Space Complexity: O(1)
def merge2_county(list_one, list_two)
  value = Node.new(-1)

  prev = value
  while list_one && list_two
    if list_one.value <= list_two.value
      prev.next = l1
      l1 = l1.next
    else
      prev.next = l2
      l2 = l2.next
    end
    prev = prev.next
  end

  if l1 != nil
    prev.next = l1
  else
    prev.next = l2
  end

  value.next
end

# Time complexity: O(k x n)
def mergeK_count(lists)
  return nil if lists.empty?

  lists.sort! { |a, b| a.value <=> b.value }

  value = Node.new(-1)
  prev = value
  while !lists.empty?
    prev.next = lists.shift
    prev = prev.next
  end

  value.next
end

