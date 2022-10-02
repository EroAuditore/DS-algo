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
            #check on the left if is it possible
            if childNode.left.nil?
                childNode.left = n_node
            end
            if condition
                
            end
            
        end
    end
    def lookup(value)
    end

end