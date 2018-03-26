# 
Tutorial Node.js .
Despligue en Heroku .

#URL DEPLOY HEROKU
Al hacer el deploy, se debe acceder a la siguiente URL:
https://nodejs2017carrito.herokuapp.com/

#VER LOGS DE HEROKU WEB
Primero hay que hacer login: heroku login
ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ heroku logs -t --app nodejs2017carrito



#INICIAR EN ENTORNO LOCAL
En el directorio raiz, ejecutar:  npm start
Node corre en el puerto  3000
RUTA URL:   http://localhost:3001/index


#CONECTAR A BD CLEARDB MYSQL DE HEROKU: 
ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ mysql -u bdfb4388ca15a4 -h us-cdbr-iron-east-05.cleardb.net -pf5ff3602

