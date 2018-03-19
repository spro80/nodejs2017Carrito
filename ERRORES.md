###################################################################
#ERRORES 1:   npm start

throw new Error('Most middleware (like ' + name + ') is no longer bundled with Express and must be installed separately. Please see https://github.com/senchalabs/connect#middleware.');
      ^
Error: Most middleware (like logger) is no longer bundled with Express and must be installed separately. Please see https://github.com/senchalabs/connect#middleware.


#SOLUCION 1: Reinstalar express con las versiones indicadas
ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ npm install express@">=3.0.0 <4.0.0" --save

ddiaz@ddiaz-Inspiron-5567:/var/www/html/nodejs2017Carrito$ npm start

###################################################################


