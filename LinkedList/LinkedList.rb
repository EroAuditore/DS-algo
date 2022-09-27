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
    def prepend(value)
      newNode = Node.new(value)
      newNode.next = @head
      @head = newNode 
    end
    def insert(index, value)
      i = 0
      currentNode = @head
      previousNode = @head
      while !currentNode.nil?
        if index == i
          newNode = Node.new(value)
          newNode.next = currentNode
          previousNode.next = newNode
          break
        end
        i += 1
        currentNode = currentNode.next 
        previousNode = currentNode
      end
    end
    def to_s
      currentNode = @head
      arr = []
      while !currentNode.nil?
        arr << currentNode.value
        currentNode = currentNode.next
      end
      puts arr.join(" ,")
    end
    
end

list = LinkedList.new(10)
list.append(15)
list.append(20)
list.prepend(5)
list.append(1)
list.insert(1, 7)
list.to_s