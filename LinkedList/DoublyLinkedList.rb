class Node
    attr_accessor :value, :next, :prev
    def initialize(value)
        @value = value
        @next = nil
        @prev = nil        
    end
end

class DoublyLinkedList
    attr_accessor :head, :tail
    def initialize(value)
        node = Node.new(value)
        @head = node
        @tail = @head        
    end
    def append(value)
        n_node = Node.new(value)
        n_node.prev = @tail
        @tail.next = n_node
        @tail = n_node  
    end
    def prepend(value)
        n_node = Node.new(value)
        n_node.next = @head
        @head.prev = n_node
        @head = n_node
    end
    def insert(index, value)
        i = 0
        currentNode = @head
        previousNode = @head
        if index == 0
            prepend(value)
            return
        end
        while !currentNode.nil?
            if index == i
            newNode = Node.new(value)
            newNode.next = currentNode
            newNode.prev = previousNode
            currentNode.prev =newNode
            previousNode.next = newNode
        
            break
            end
            i += 1 
            previousNode = currentNode
            currentNode = currentNode.next
        end
    end
    def remove(index)
        i = 0
        currentNode = @head
        previousNode = @head
        while !currentNode.nil?
          if index == i
            if currentNode == @tail
                previousNode.next = nil
                @tail = previousNode
            else
                previousNode.next = currentNode.next
                currentNode.next.prev = previousNode
            end 
            
            break
          end
          i += 1
          previousNode = currentNode
          currentNode = currentNode.next
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

list = DoublyLinkedList.new(10)
list.append(15)
list.append(20)
list.prepend(5)
list.append(1)
list.insert(1, 7)
list.remove(1)
list.remove(4)

list.to_s