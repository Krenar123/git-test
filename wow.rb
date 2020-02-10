class Pizza
    attr_accessor :name, :price, :num_ing
    def initializeIng
        for i in 0..num_ing-1 do
            print("Ingiridienti i #{i+1}: ")
            s = gets.chomp
            @ing << s
        end
    end
    def printPizza
        puts("Emri i pizzes: #{@name}")
        puts("Cmimi i pizzes: #{@price}")
        puts("Perberesit e pizzes: ")
        @ing.each do |i|
            puts(i)
        end
    end

    @ing = Array.new
    @num_ing
end

pizza = Pizza.new

print("Jep emrin e pizzes: ")
pizza.name = gets.chomp
print("Jep cmimin e pizzes: ")
pizza.price = gets.chomp

print("Jep numrin e ingridiens: ")
pizza.num_ing = gets.to_i

pizza.initializeIng

pizza.printPizza


