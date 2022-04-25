require './heap.rb'

# Time complexity is O(n)
# Space complexity is O(n)
# Time complexity Insert Age is O(logn)

class MedianOfAges

  def initialize
    @max_heap = MaxHeap.new()
    @min_heap = MinHeap.new()
  end

  def insert_age(num)
    if @max_heap.empty? || @max_heap.max >= num
      @max_heap.push(num)
    else
      @min_heap.push(num)
    end

    if @max_heap.size() > @min_heap.size() + 1
      @min_heap.push(@max_heap.pop())
    elsif @min_heap.size() > @max_heap.size() + 1
      @max_heap.push(@min_heap.pop())
    end
  end

  def find_median()
    if @max_heap.size() == @min_heap.size()
      return @max_heap.max / 2.0 + @min_hyeap.min / 2.0
    end

    @max_heap.max / 1.0
  end
end
