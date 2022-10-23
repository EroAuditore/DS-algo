require_relative '../Node/Node'

class BinarySearchTree
    attr_accessor :root
    def initialize(value=nil)
      @root = nil
    end
    def insert(value)
        n_node = TreeNode::Node.new(value)
        childNode = @root
        if @root == nil
            @root = n_node
        end
        while !childNode.nil?
            # got to left
            if childNode.value > n_node.value
                #traverse to the left
                 if !childNode.left.nil?
                    childNode = childNode.left
                 else
                    childNode.left = n_node
                    childNode = nil
                 end
            # go to right    
            elsif childNode.value < n_node.value
                #traverse to the right
                if !childNode.right.nil?
                    childNode = childNode.right
                else
                    childNode.right = n_node
                    childNode = nil
                end
                
            end
            
        end
    end
    def lookup(value)
        #how to find in a tree?
        #if the value is the root return that
        if @root.value == value
            return @root
        end
        #look for the value like we where going to insert
        lookingNode = @root
        #first on the left
        while(!lookingNode.nil?)
            if value < lookingNode.value
                lookingNode = lookingNode.left
                unless lookingNode.nil?
                    if lookingNode.value == value
                        return lookingNode
                    end       
                end                
            end        
            #second on the right
            if value > lookingNode.value
                lookingNode = lookingNode.right
                unless lookingNode.nil?
                    if lookingNode.value == value
                        return lookingNode
                    end
                end
            end
        end
        return nil
    end
    def delete(value)
        # fin the value to delete
        # once is found, fin the sucessor
        # if the node is a leaf delete its parent references

        parentNode = @root
        currentNode = @root
        successorNode = nil
        while !currentNode.nil?
            if value < currentNode.value 
                # traverse to left
                # set the parent node with current node
                parentNode = currentNode
                currentNode = currentNode.left

                if !currentNode.nil?
                    if currentNode.value == value
                        puts "found value in the left"
                        # once we found the value to delte, find the sucessor  
                        succesorNode = self.successorNode(currentNode)
                        #casecleaf
                        if succesorNode.nil?
                            parentNode.left = nil
                        end

                        currentNode = nil
                    end
                end
    
            elsif value > currentNode.value
                # traverse to right
                parentNode = currentNode
                currentNode = currentNode.right
                if !currentNode.nil?
                    if currentNode.value == value
                        #in the right
                        puts "found value in the right"
                        succesorNode = self.successorNode(currentNode)
                        #case leaf
                        if succesorNode.nil?
                            parentNode.right = nil
                        end
                        currentNode = nil
                    end
                end
            end
        end
        

    end

    def successorNode(node)
        puts "finding succesor for node: #{node.value}"
        # case node is leaf, right and left bouth are nil, there is no successor
        if node.left.nil? && node.right.nil?
            return nil
        end

        #case it don't have right 
        if node.right.nil?
            return node.left
        end

        #case we have right, traverse to right
        if !node.right.nil?
            successor_n = node.right
            #if the successor dont have left, this is the successor
            if successor_n.left.nil?
                return successor_n
            end
        end

    end
end