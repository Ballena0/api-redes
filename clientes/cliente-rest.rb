require 'httparty'

puts ("Bienvenido a cliente de servicio REST \n 1)Digito verificador RUT \n 2)Saludo a tu nombre completos \n 0)Salir")
opcion = gets.chomp.to_i
case opcion 
when 1
    puts "Ingrese valor del rut por ej(6666666-6)"
    rut = gets.chomp
    newrut = "http://127.0.0.1:5000/rut/#{rut}"
    responseRut = HTTParty.get(newrut)
    puts responseRut.body
when 2
    puts "Ingrese primer nombre"
    nom = gets.chomp
    puts "Ingrese apellido paterno"
    pat = gets.chomp
    puts "Ingrese apellido materno"
    mat = gets.chomp
    puts "Ingrese genero, 0 para masculino y 1 para femenino"
    gender = gets
    data = HTTParty.post( "http://127.0.0.1:5000/saludo", body:{
        nombre:nom,
        paterno:pat,
        materno:mat,
        sexo:gender
    })
    puts data         
when 0
    puts "adios"
end