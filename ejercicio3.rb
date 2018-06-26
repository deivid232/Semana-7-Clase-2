# Ejercicio 3: Array de hashes
# 1. Crear un menú que permita registrar la información de los alumnos del curso.
# 2. Opción 1: Permite ingresar los datos de una persona:
#     - Nombre
#     - Edad
#     - Comuna
#     - Género
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
# 	*hint:* Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.
# 5. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 6. Opción 7: Muestra la suma de las edades de todas las personas.
# 7. Opción 8: Muestra el promedio de las edades del grupo.
# 8. Opción 9: Muestra dos listas de personas, una por cada género.
# 9. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).


a = ['Opción 1:  Ingresar los datos de una persona.', 'Opción 2:  Editar los datos de la persona.', 'Opción 3:  Eliminar una persona.',
  'Opción 4:  Cantidad de personas ingresadas.', 'Opción 5:  Comunas de todas las personas.',
  'Opción 6:  Lista con todas las personas que tengan entre 20 y 25 años.', 'Opción 7:  Suma de las edades de todas las personas.',
  'Opción 8:  Promedio de las edades del grupo.', 'Opción 9:  Muestra dos listas de personas, una por cada género.', 'opción 10: Salir.']

def datos_peronas
  puts 'Ingrese nombre de la persona'
    nombre = gets.chomp.to_s

  puts 'Ingrese genero de la persona'
    genero = gets.chomp.to_s

  puts 'Ingrese comuna de la persona'
    comuna = gets.chomp.to_s

  puts 'Ingrese edad de la persona'
      edad = gets.chomp.to_i

  datos = nombre[genero, comuna, edad]

  print datos





end
