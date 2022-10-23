require_relative 'Trees/BinarySearchTree'
require_relative 'Stacks/Stack'

bst = BinarySearchTree.new()


    #                 100
    #              /         \
    #           50           140
    #          /  \         /    \
    #       10       80     130   160
    #      /  \     /  \    / \   /  \
    #     6   12   60  90  120       180 
    bst.insert(100);
    bst.insert(50)
    bst.insert(140)
    bst.insert(10)
    bst.insert(80)
    bst.insert(130)
    bst.insert(160)
    bst.insert(6)
    bst.insert(12)
    bst.insert(60)
    bst.insert(90)
    bst.insert(120)
    bst.insert(180)
    bst.delete(6)
    bst.delete(12)
    
    # bst.delete(50)
    # bst.delete(130)
    # bst.delete(160)

