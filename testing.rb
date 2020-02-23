class Test
    @value = 0

    def setValue(val)
        @value = val
    end

    def getV
        puts 2 + 2
        puts @value
    end

   
    public :setValue, :getV
end

test = Test.new
test.setValue(4)
puts test.getV