class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end


class LinkedList
    attr_accessor :head, :tail
    def initialize(value)
      newNode = Node.new(value)
      @head = newNode
      @tail = @head
    end
    def append(value)
      newNode = Node.new(value)
      @tail.next = newNode
      @tail = newNode
    end
    def preppend(value)
      newNode = Node.new(value)
      newNode.next = @head
      @head = newNode 
    end
end

list = LinkedList.new(10)
list.append(15)
list.append(20)
list.preppend(5)
list.append(1)