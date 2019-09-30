require 'Savon'

cliente = Savon.client(wsdl: "http://127.0.0.1/?wsdl")
message = {rut: '18731363'}
response = cliente.call(message:message)