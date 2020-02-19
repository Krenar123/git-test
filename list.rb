class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end 
end

class List
    # Duna me ndreq qe me inkuadru Node klasen..
    # Gjithashtu edhe metodat per insertim per printim...
    @head = nil
    @curr = nil
    @tail =nil
    def add(node)
        if @head == nil
            @head = Node.new(node)
            
            @tail = @head
        else
            @curr = @head
            while @curr.next != nil do
                @curr = @curr.next
            end
            @curr.next = Node.new(node)
        end
    end
    def print
        @curr = @head
        
        while @curr != nil do
            puts @curr.value
            @curr = @curr.next
        end
    end

    def delete(data)
        @curr = @head
        if @head.value == data 
            @head = @curr.next
        else
            while @curr.next != nil do
                if @curr.next.value == data
                    far = @curr.next
                    @curr.next = far.next
                end
                @curr = @curr.next
            end
        end
    end
end
# i made to insert and print now i should add to delete  find etc
list = List.new
list.add(5)
list.add(2)
list.add(3)
list.print
list.delete(2)
list.print
# Just when its the last one i cant delete it  so i should add new code