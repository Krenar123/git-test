# binary trees

class Node
    attr_accessor :data, :left, :right
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
    def print
        puts "#{data}"
    end

end

class BinaryTree 
    @root = nil
    @curr = nil
    @tail
    def insertNode(data)
        n = Node.new(data)
        add(n)
    end
    def add(n)
        
        
        if @root == nil
            @root = n
            @curr = @root
            
            @tail = @head
        else
            if n.data > @curr.data
                if @curr.right == nil 
                    
                    @curr.right = n
                    return
                else
                    @curr = @curr.right
                    add(n)
                end
            elsif n.data < @curr.data
                if @curr.left == nil
                   
                    @curr.left = n
                    return
                else
                    @curr = @curr.left
                    add(n)
                end
            end
        end
    end
    def printAll
        printN(@root)
    end
    def printN(root)
        if root == nil 
            return
        else
            printN(root.right)

            puts root.data

            printN(root.left)
        end
    end
end

binary = BinaryTree.new
binary.insertNode(5)
binary.insertNode(2)
binary.insertNode(3)
binary.insertNode(4)
binary.printAll
