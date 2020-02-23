# Took something from c++

class  Pizza
    def initialize(name, price,num_ing)
        @name = name
        @price = price
        @num = num_ing
        setIng
    end

    def setIng
        @arr = []
        for i in 0..@num-1 do
            @arr << gets.chomp
        end
    end
    
end

class Piccery 
    def initialize(name, nm_pizza)
        @name = name
        @num = nm_pizza
        setPizza
    end

    def setPizza
        @arr = []
        
        for i in 0..@num-1 do
            f = gets.chomp
            print "Price: "
            k = gets.to_i
            print "Numri ing: "
            n = gets.to_i
            @pizza = Pizza.new(f,k,n)
            @arr << @pizza
        end
    end

    def getPizza
        "Picceria: #{@name} ka kto pizza: #{@arr}"
    end
end

# duhet me perdor irb -r ./
# duhet me kriju ni Piccery ( emri piceris, numri picav)
