require 'io/console'
puts `clear`

n = 0

personas = []

hash =  { :name => 'Omar', :age => '21', :comuna => 'Las Condes', :gender => 'Masculino' }
hash1 = {:name => 'Stephanie', :age => '19', :comuna => 'Las Condes', :gender => 'Femenino'}
personas.push(hash)
personas.push(hash1)
puts personas
while n!=10  do
  puts "1.Ingresar datos \n2.Editar datos \n3.Eliminar persona \n4.Cantidad de personas ingresadas \n5. \n6.Personas entre 20 y 25 \n7. \n8. \n9. Mostrar datgos \n10. Salir\n"
 n = gets.chomp.to_i
 case n
 when 1
   puts `clear`
   puts "\nIngresando datos\n Nombre: "
   nombre = gets.chomp
   puts "\n Edad: "
   edad  = gets.chomp
   puts "\n Comuna: "
   comuna = gets.chomp
   puts "\n Genero: "
   genero = gets.chomp
   hash =  { :name => nombre, :age => edad, :comuna => comuna, :gender => genero }
   personas.push(hash)


 when 2
   puts `clear`
   numero = 0
   puts "Ingrese el numero del usuario a editar"

   personas.each_with_index do |persona, i|
     puts "#{i+1}" + ". "  + persona[:name]
   end
   numero = gets.chomp.to_i
   puts "\nEditando usuario " + personas[numero-1][:name]
   puts "\nIngrese nombre: "
   personas[numero-1][:name] = gets.chomp
   puts "\nIngrese edad: "
   personas[numero-1][:age] = gets.chomp
   puts "\nIngrese edad: "
   personas[numero-1][:comuna] = gets.chomp
   puts "\nIngrese genero: "
   personas[numero-1][:gender] = gets.chomp

   print "\nPresiona cualquier tecla para continuar"
   STDIN.getch
 when 3
   numero = 0
   # puts "Ingrese el numero del usuario a eliminar"
   #
   # personas.each_with_index do |persona, i|
   #   puts "#{i+1}" + ". "  + persona[:name]
   # end
   # personas.delete_at(numero-1)

   puts personas

 when 4
   puts `clear`
   puts "Se han ingresado " + personas.length.to_s + " personas"
   print "Presiona cualquier tecla para continuar"
   STDIN.getch
 when 6
   edades = []
   puts "Personas entre 20 y 25"
   personas.each do |persona|
     puts persona[:edad]
   end
 when 9
   puts `clear`
   masculino = []
   femenino = []
   personas.each_with_index do |persona, i|
     if persona[:gender].downcase == 'masculino'
       masculino.push(persona[:name])
     else
       femenino.push(persona[:name])
     end
   end
   puts "usuarios masculinos"
   puts masculino
   puts "usuarios femeninos"
   puts femenino
   print "\nPresiona cualquier tecla para continuar"
   STDIN.getch
 when 10

 end

 puts `clear`
end
