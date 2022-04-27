class LinkedListNode
  #Ruby's fields are private. attr_accessor makes them public
  attr_accessor :next, :prev, :data, :key
  def initialize(key, data)
    @data = data
    @key = key
    @next = nil
    @prev = nil
  end
end

class LinkedList
  #Ruby's fields are private. attr_accessor makes them public
  attr_accessor :size, :head, :tail
  def initialize()
    @head = nil
    @tail = nil
    @size = 0
  end

  def insert_at_head(data)
    new_node = LinkedListNode.new(data)
    if @head == nil
      @tail = new_node
      @head = new_node
    else
      new_node.next = @head
      @head.prev = new_node
      @head = new_node
    end

    @size+=1
  end

  def insert_at_tail(key, data)
    new_node = LinkedListNode.new(key, data)
    if @tail == nil
      @tail = new_node
      @head = new_node
      new_node.next = nil
    else
      @tail.next = new_node
      new_node.prev = @tail
      @tail = new_node
      new_node.next = nil
    end

    @size+=1
  end

  def remove_node(node)
    if node == nil
      return
    end

    if node.prev != nil
      node.prev.next = node.next
    end

    if node.next != nil
      node.next.prev = node.prev
    end

    if node == @head

      @head = @head.next
    end

    if node == @tail
      @tail = @tail.prev
    end
    size= @size - 1

    return node
  end

  def remove_head()
    return remove_node(@head)
  end

  def remove_tail()
    return remove_node(@tail)
  end

  def get_head()
    return @head
  end

  def get_tail()
    return @tail
  end

end
