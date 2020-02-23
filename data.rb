# First with stack 

class Stack 
    @@arr = Array.new
    @@bot = 0
    @@top = 0
    def push(data)  
        @@arr[@@top] = data
        @@top += 1
    end
    def pop
        if top == 0
            puts "Stack its empty"
        else
            @@arr[@@top-1] = -1
            @@top -= 1
        end
    end
    def print
        @@arr.each do |i|
            puts i
        end
    end
    def front
        return @@arr[@@top-1]
    end
    def back 
        return @@arr[@@bot]
    end
    def length
        return @@top
    end
end

class Queue
    @@front = 0 
    @@back = 0
    @@arr = Array.new
    def enqueue(data)
        @@arr[@@front] = data
        @@front += 1
    end
    def dequeue
        if  @@front == @@back
            puts "Queue its empty"
        else
            @@arr[@@front-1] = 0
            @@front -= 1
        end
    end
    def front
        return @@front
    end
    def print
        if @@front == @@back
            puts "Queue esht empty"
        else
            @@arr.each do |i|
                puts i
            end
        end
    end

end

qu = Queue.new
stack = Stack.new