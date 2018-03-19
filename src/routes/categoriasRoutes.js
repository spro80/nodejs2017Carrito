
module.exports = function( app ){
	
	app.get('/categorias', function(req, res){
		//res.send("GET Listado de Categorias");
		res.render('categorias', "GET Listado de Categorias");
	});
	
}
