require './LinkedList.rb'

# Linked list operations
# insert_at_tail(key, data)
# remove_node(node)
# remove_head()
# remove_tail()
# get_head()
# get_tail()

class LRUStructure

  attr_accessor :cache, :capacity, :cache_vals
  def initialize(capacity)
    @capacity = capacity
    @cache = {} # Hashmap
    @cache_vals = LinkedList.new() # Doubly linked list
  end

  def set(key, value)
    if not @cache.include? key
      if(@cache_vals.size >= @capacity)
        @cache_vals.insert_at_tail(key,value)

        @cache[key] = @cache_vals.get_tail()

        @cache.delete(@cache.keys[0]) { |el| "#{el} not found" }

        @cache_vals.remove_head()
      else
        @cache_vals.insert_at_tail(key,value)
        @cache[key] = @cache_vals.get_tail()
      end

    else
      @cache_vals.remove_node(@cache[key])
      @cache_vals.insert_at_tail(key,value)
      @cache[key] = @cache_vals.get_tail()
    end
  end

  def get(key)
    if !@cache.include? key
      return nil
    else
      value = @cache[key].data
      @cache_vals.remove_node(@cache[key])
      @cache_vals.insert_at_tail(key, value)
      return @cache_vals
    end
  end

  def print_data()
    node = @cache_vals.get_head()
    while node != nil
      print("(" + (node.key).to_s + "," + (node.data).to_s + ")")
      STDOUT.flush
      node = node.next
    end
    puts("\n")
  end
end


  def get(key)
    if !@cache.include? key
      return nil
    end
    value = @cache[key].data
    @cache_values.remove_node(@cache[key])
    @cache_values.inset_at_tails(key, value)
    return @cache_values
  end

  def print_data()
    node = @cache_vals.get_head()
    while node != nil
      print("(" + (node.key).to_s + "," + (node.data).to_s + ")")
      STDOUT.flush
      node = node.next
    end
    puts("\n")
  end
end
