
module Node
    class Node
        def initialize(value)
            @value = value
            @next = nil

        end
    end
end

module TreeNode
    class Node
        attr_accessor :value, :left, :right
        def initialize(value)
          @value = value
          @left = nil
          @right = nil
        end
    end
end
