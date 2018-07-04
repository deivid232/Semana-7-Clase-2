# Dado el array:
#
# ~~~ruby
#  a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# ~~~
#
# 1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
# 2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *float*.
# 3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *string*.
# 4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5 en el array.
# 5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5 en el array.
# 6. Utilizando *inject* obtener la suma de todos los elementos del array.
# 7. Utilizando *group_by* agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
# 8. Utilizando *group_by* agrupar todos los números mayores y menores que 6.

 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# #1
#  b = a.map { |e|  e+1}
#  print b
# #
# # #2
# c = a.map { |e| e.to_f }
# print c
# #
# # #3
# d = a.map { |e| e.to_s }
# print d
#
# #4
# f = a.reject { |e| e < 5  }
# print f
#
# #5
# g = a.select { |e| e < 5 }
# print g

#6
h = a.inject { |n, sum| sum + n}
print h

# #7
# j = a.group_by{ |e| e.even? }
# print j
#
# #8
# k = a.group_by{ |e| e > 6}
# print k















#
