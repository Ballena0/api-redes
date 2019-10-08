require 'savon'
cliente = Savon.client(wsdl: "http://127.0.0.1:8000/?wsdl", pretty_print_xml: true)
puts "Bienvenido al cliente soap \n 1)verificador rut \n 2)saludo \n 0)salir"
opcion = gets.chomp.to_i
case opcion
when 1
    rut = gets.chomp.to_i
    message = {rut: '#{rut}'}
    response = cliente.call(:digito_verificador,message:message)
    puts response.doc
#puts cliente.operations
when 2
    puts "Ingrese nombre"
    nombre = gets.chomp
    puts "Ingrese apellido paterno"
    paterno = gets.chomp
    puts "Ingrese apellido materno"
    materno = gets.chomp
    puts "Ingrese sexo 0 para masculino, 1 para femenino"
    sexos = gets.chomp.to_i
    saludo = {nom: nombre, pat: paterno, mat: materno, sexo: sexos}
    respuesta = cliente.call(:generar_saludo, message:saludo)
when 0
    puts "Adios"
end

