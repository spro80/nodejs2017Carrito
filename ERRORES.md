###################################################################
#ERRORES 1:   npm start

throw new Error('Most middleware (like ' + name + ') is no longer bundled with Express and must be installed separately. Please see https://github.com/senchalabs/connect#middleware.');
      ^
Error: Most middleware (like logger) is no longer bundled with Express and must be installed separately. Please see https://github.com/senchalabs/connect#middleware.


#SOLUCION 1: Reinstalar express con las versiones indicadas
ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ npm install express@">=3.0.0 <4.0.0" --save

ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ npm start

###################################################################

###################################################################

#ERRORES 2:   No carga pagina en produccion, pero si funciona en entorno local.

Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch


#SOLUCION 2: Si hay problemas al hacer deploy y se obtiene el siguiente error, la solucion es la siguiente:
Heroku dynamically assigns your app a port, so you can't set the port to a fixed number. Heroku adds the port to the env, so you can pull it from there. Switch your listen to this:

.listen(process.env.PORT || 5000)

That way it'll still listen to port 5000 when you test locally, but it will also work on Heroku.

You can check out the Heroku docs on Node.js here.


###################################################################
