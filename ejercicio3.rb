# frozen_string_literal: true

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
#   *hint:* Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.
# 5. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 6. Opción 7: Muestra la suma de las edades de todas las personas.
# 7. Opción 8: Muestra el promedio de las edades del grupo.
# 8. Opción 9: Muestra dos listas de personas, una por cada género.
# 9. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).

a = ['Opción 1:  Ingresar los datos de una persona.', 'Opción 2:  Editar los datos de la persona. no lograda', 'Opción 3:  Eliminar una persona. no lograda',
    'Opción 4:  Cantidad de personas ingresadas.', 'Opción 5:  Comunas de todas las personas.',
    'Opción 6:  Lista con todas las personas que tengan entre 20 y 25 años.', 'Opción 7:  Suma de las edades de todas las personas.',
    'Opción 8:  Promedio de las edades del grupo.', 'Opción 9:  Muestra dos listas de personas, una por cada género.', 'opción 10: Salir.']

#1 listo
def datos_de_peronas
  puts 'Ingrese nombre de la persona'
  nombre = gets.chomp.to_s.downcase

  puts 'Ingrese genero de la persona f si es mujer y m si es hombre'

  genero = gets.chomp.to_s.downcase
  while genero != 'm' && genero != 'f'
    puts 'INCORRECTO! Ingrese genero de la persona --f-- si es mujer y --m-- si es hombre'
    genero = gets.chomp.to_s.downcase

  end
  puts 'Ingrese comuna de la persona'
  comuna = gets.chomp.to_s.downcase

  puts 'Ingrese edad de la persona'
  edad = gets.chomp.to_i

  file = File.open('personas.csv', 'a')
  file.puts "#{nombre}, #{genero}, #{comuna}, #{edad}"
  file.close

  personas = []
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp)}
  datos_personas = personas.map { |datos| datos.split(', ')}
  print datos_personas
end


#4.listo
def cuantas_personas
  personas = []
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp) }
  datos_personas = personas.map{ |datos| datos.split(',')}
  cantidad = datos_personas.map{ |j| j.count }
  cantidad_personas = cantidad.length
     puts "La cantidad de personas ingresadas es de #{cantidad_personas}"
 end

#5.listo
 def comunas_personas
   personas = []
   File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp)}
   datos_personas = personas.map{ |datos| datos.split(',')}


   datos_personas.each do |a, b, c, d|
     puts "#{a} #{c}"
   end
   return
 end



#opcion 6 listo
def edad_entre_20_25
  personas =[]
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp) }
  datos_personas = personas.map{ |datos| datos.split(',') }


  datos_personas.each do |a, b, c, d|
    puts "#{a} #{d}" if d.to_i >= 20 && d.to_i <= 25
  end
  return
end


#7.listo
def edades_personas
  personas =[]
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp) }
  datos_personas = personas.map{ |datos| datos.split(',') }



  suma = 0
  datos_personas.each do |a, b, c, d|
    suma += d.to_i
  end
  puts "#{suma}"
end

#8.listo
def promedio_edades_personas
  personas =[]
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp) }
  datos_personas = personas.map{ |datos| datos.split(',')}
  cantidad = datos_personas.map{ |j| j.count }
  largo = cantidad.length
  suma = 0
   datos_personas.each do |a, b, c, d|
     suma += d.to_i
   end
     promedio = suma /largo
     puts promedio
 end

#9.listo
def genero_personas
  personas =[]
  File.open('personas.csv', 'r') { |file| personas = file.readlines.map(&:chomp) }
  datos_personas = personas.map{ |datos| datos.split(',') }
  hombres = datos_personas


    c = hombres.select { |a, b, c, d| b =~ /[m]/ }
    puts "\n" 'LISTA HOMBRES' "\n"
    print c

    d = hombres.select { |a, b, c, d| b =~ /[f]/}
    puts "\n"'LISTA MUJERES'
    print d

end








eleccion = 0
while  eleccion != 10
  puts '#----------------------------------------------------------------------------#'
  puts a
  puts '#----------------------------------------------------------------------------#'

  eleccion = gets.chomp.to_i
  puts case eleccion
       when 1
          datos_de_peronas

       when 2

        editar_datos

       when 3

       when 4

         cuantas_personas

       when 5

         comunas_personas

       when 6
           edad_entre_20_25

       when 7

         edades_personas

       when 8

         promedio_edades_personas

       when 9

         genero_personas

       when 10
         puts '#----------------------------------------------------------------------------#'
         puts 'adios'
         puts '#----------------------------------------------------------------------------#'
       else
         puts '#----------------------------------------------------------------------------#'
         puts 'opcion incorrecta'
         puts '#----------------------------------------------------------------------------#'
       end
end
