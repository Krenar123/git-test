class Film 
    attr_accessor :name, :mem, :cat

    def print 
        puts ("Emri filmi: #{@name}")
        puts ("Memoria e filmit: #{@mem}")
        puts ("Kategoria: #{@cat}")
    end
end
#Metoda qe e kthen filmin me minimum memorie
def findMin(a)
    max = 0
    a.each do |i|
        if max < i.mem 
            max = i.mem
        end
    end
    a.each do |i|
        if max == i.mem
            puts("Filmi me memorie mat madhe esht: #{i.name}")
        end    
    end
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

findMin(a);




