from wtforms import Form, BooleanField, StringField, validators

class nombre_completo(Form):
    paterno = StringField('Apellido paterno', [validators.Length(min=4, max=25)])
    materno = StringField('Apellido materno', [validators.Length(min=4, max=25)])
    nombres = StringField('Nombres(todos)', [validators.Length(min=4, max=25)])
    sexo = BooleanField('sexo', [validators.DataRequired()])
