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




###################################################################
