# Dado el arreglo
#
# ~~~ruby
# nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# ~~~
#
# Se pide:
#
# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
# 2 Utilizando *.map* crear una arreglo con los nombres en minúscula.
# 3 Utilizando *.select* para crear un arreglo con todos los nombres que empiecen con P.
# 4 Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene cada nombre.
# 5 Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres.

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a = nombres

#1
# a.select do|j|
#    a = j.length
#    print "#{j}   " if a > 5
# end


#2
# b = a.map{ |e| e.downcase  }
# print b

# #3
# c = a.select { |e| e =~ /[pia]/ }
# print c

#4

# a.map do|j|
#   c = j.length
#   puts "#{j} #{c}"
# end
# print a.map { |e| e - "aeiou"}
# print a.length

#5
# print a.map{ |e| e.gsub(/["AaEeIiOoUu"]/, '')}











 #
