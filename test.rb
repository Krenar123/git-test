class Shape
    attr_accessor :date, :name
    def initialize(date)
        self.date = date
    end
    def name_s(name)
        self.name = name + " + "
    end
    def setName(name)
        name_s(name)
    end
    def getName
        return name
    end
    private :name_s
end

shape = []
shape.push(Shape.new(4))
shape.push(Shape.new(5))
shape.push(Shape.new(2))

f = Shape.new(0)
f.setName("krenar")
puts f.getName
shape.each {|i| puts i.date}