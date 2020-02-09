class Film 
    attr_accessor :name, :mem, :cat
    def initialize(name, mem,cat)
        @name = name
        @mem  = mem
        @cat  = cat
    end
    def print 
        puts ("Emri filmi: #{@name}")
        puts ("Memoria e filmit: #{@mem}")
        puts ("Kategoria: #{@cat}")
    end
end


#Metoda qe e kthen filmin me minimum memorie
def findMin(a)
    fil = Film.new
    max = 0
    a.each do |i|
        if max < i.mem 
            max = i.mem
        end
    end
    a.each do |i|
        if max == i.mem
            fil = i
        end    
    end
    return fil
end


puts("Sa filma do ti krijon: ");
n = gets.to_i
a = []

newFilm = Film.new
#ketu ipet filmi
for i in 0..n-1 do
    nam = gets.chomp
    me = gets.to_i
    ca = gets.chomp
    newFilm.name = nam
    newFilm.mem = me
    newFilm.cat = ca
    a << newFilm
end
give  = findMin(a).name 
puts ("Filmi me memorie met lart: #{give}");




