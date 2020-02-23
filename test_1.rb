# If we try protect7ed in parent it will be same to other 
# if the parameter (other) is class where diff is priavte ti wont work

class Grandfather

    def initialize(name,age)
        setName(name)
        setAge(age)
    end

    def setName(name)
        @name = name
    end
    def setAge(age)
        @age = age
    end
    def set_diff(other)
        (age - other.age).abs
    end
    def welcome
        " , I am parent"
    end
    
    

    public
    
    def age
        @age
    end
    private
    def name
        @name
    end
end

class Father < Grandfather
    def welcome
        " Nali #{super}"
    end
end

class Son < Father
   def welcome 
    puts "Wooow #{super}"
   end
end

fr = Son.new("Nale",23)

kr = Son.new("Rrai",22)

kr.welcome