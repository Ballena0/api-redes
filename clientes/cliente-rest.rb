require 'httparty'

puts ("Bienvenido a cliente de servicio REST \n 1)Digito verificador RUT \n 2)Saludo a tu nombre completos")
opcion = gets.chomp.to_i

if opcion == 1
    puts "Ingrese valor del rut sin digito verificador"
    rut = gets.chomps 
    newrut = "http://127.0.0.1:5000/rut/#{rut}"
    responseRut = HTTParty.get(newrut)
    puts responseRut.body
elsif opcion == 2
    puts "Ingrese primer nombre"
    nom = gets.chomp
    puts "Ingrese apellido paterno"
    pat = gets.chomp
    puts "Ingrese apellido materno"
    mat = gets.chomp
    puts "Ingrese genero, 0 para ... y 1 para ..."
    gender = gets
    data = HTTParty.post( "http://127.0.0.1:5000/saludo", body:{
        nombre:nom,
        paterno:pat,
        materno:mat,
        sexo:gender
    })
    puts data 
end