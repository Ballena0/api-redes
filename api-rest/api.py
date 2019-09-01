from itertools import cycle
from flask import Flask, escape, request

app = Flask(__name__)
app.config["DEBUG"] = True


@app.route('/')
def say_hi():
    return 'API funcionando'

@app.route('/rut/<rut>')
def digito_verificador(rut):
    reversed_digits = map(int, reversed(str(rut)))
    factors = cycle(range(2, 8))
    s = sum(d * f for d, f in zip(reversed_digits, factors))
    mod = (-s) % 11
    if (mod == 10):
        mod = 'k'
    return 'el digito verificador es ' + str(mod)


@app.route('/saludo', methods=['POST'])
def generar_saludo():
    if request.method == 'POST':
        nom = request.form.get('nombre')
        pat = request.form.get('paterno')
        mat = request.form.get('materno')
        nombreCompleto = nom + ' ' + pat + ' ' + mat + ' '
        sexo = request.form.get('sexo')
        if (sexo == True):
            sexo = 'F'
        else:
            sexo = 'M'

        bocadillo = ''
        if (sexo == 'F'):
            bocadillo = 'Sra. '
        else:
            bocadillo = 'Sr. '
        return bocadillo + nombreCompleto + 'sexo: ' + sexo        

##propercase
## sr/sra nombre_pat_mat

app.run()