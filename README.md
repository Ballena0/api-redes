# Soap & REST api
Web service for RCD assignment, created with Flask.

## Install

After cloning
Create a virtual enviroment (virtualenv/pipenv)
Install Flask
```
pip install Flask
```

_Add aplication to path_

**Unix**
``` export FLASK_APP=api.py ```
**Windows**
``` set FLASK_APP=api.py ```

## Run
``` flask run ``` 


#### Usage

_Validar digito verificador RUT_
http://127.0.0.1/rut/[tu rut sin digito verificador]

_Saludo formateado y ordenado_
Mediante un cliente o [Postman](https://www.getpostman.com/) ingresar como cuerpo los siguientes valores:


1. Apellido paterno
2. Apellido materno
3. Nombres(todos)
4. Sexo (bool)
   * True == F
   * False == M  


