from itertools import cycle
from flask import Flask, escape, request

app = Flask(__name__)

@app.route('/rut')
def digito_verificador(rut):
    reversed_digits = map(int, reversed(str(rut)))
    factors = cycle(range(2, 8))
    s = sum(d * f for d, f in zip(reversed_digits, factors))
    return (-s) % 11

@app.route('/saludo')
##propercase
## sr/sra nombre_pat_mat

##uso##
a = digito_verificador(18731363)
print (a)
