# class Node
#     attr_accessor :value, :next
#     def initialize(value)
#         @value = value
#         @next = nil
#     end
# end

require_relative '../Node/Node'

    class Stack
        attr_accessor :top, :bottom
        def initialize(value)
            node = Node::Node.new(value)
            @top = node
            @bottom = @top
        end
        def peek
            puts  @top.value        
        end
        def push(value)
            n_node = Node.new(value)
            @top.next = n_node
            @top = n_node
        end
        def pop
            currentNode = @bottom
            prevNode = @node
            while(!currentNode.nil?)
                if currentNode.next.nil?
                    prevNode.next = nil
                    @top = prevNode
                    return currentNode.value
                end
                prevNode = currentNode
                currentNode = currentNode.next
            end
    
        end
        def to_s
            currentNode  = @bottom
            while(!currentNode.nil?)
                puts currentNode.value
                currentNode = currentNode.next 
            end
        end
    end



# stack = Stack.new(1)

# stack.push(2)
# stack.push(3)
# stack.peek
# #stack.to_s
# stack.pop
# stack.peek
# #stack.to_s

