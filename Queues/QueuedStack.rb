require_relative '../Stacks/stack'

class QueuedStack
    attr_accessor :node, :value
    def initialize(value)
      @stackPush = Stack.new(value)
      @value = value
    end
end

qs = QueuedStack.new(1)