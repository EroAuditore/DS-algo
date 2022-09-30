class Node
    attr_accessor :value, :next
    def initialize(value =nil)
        @value = value
        @next = nil
    end
end

class Queue
    def initialize
        node = Node.new()
        @first  = nil
        @last   = nil
    end
    def enqueue(value)
        n_node = Node.new(value)
        if(@first.nil? && @last.nil?)
            @first = n_node
            @last = @first
        end
        @last.next = n_node
        @last = n_node
    end
    def dequeue
        if(!@first.nil?)
            puts "dequeued: #{@first.value}"
            @first = @first.next
        end
    end
    def peek
        puts "peek: #{@first.value}"
    end
    def to_s
        currentNode = @first
        while(!currentNode.nil?)
            puts currentNode.value
            currentNode = currentNode.next  
        end
    end
end

queue = Queue.new()
queue.enqueue("joy")
queue.enqueue("Matt")
queue.enqueue("Pavel")
queue.enqueue("Samir")

queue.peek
queue.dequeue
queue.to_s